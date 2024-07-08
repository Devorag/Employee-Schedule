import { useState, useRef } from "react";
import { AgGridReact } from "ag-grid-react";
import "ag-grid-community/styles/ag-grid.css";
import "ag-grid-community/styles/ag-theme-quartz.css";
import { ColDef, ICellRendererParams } from "ag-grid-community";
import { IPresident, IExecutiveOrder } from "./DataInterfaces";
import { blankExecutiveOrder, deleteExecutiveOrder, postExecutiveOrder } from "./DataUtil";
import ActionCellRenderer from "./ActionCellRenderer";
import { handleAddNew } from "./HandleAddNew";

interface Props {
    president: IPresident;
    onChanged: (value: IExecutiveOrder, fordelete: boolean) => void;
}

export function ExecutiveOrderGrid({ president, onChanged }: Props) {
    const [errormsg, setErrormsg] = useState("");

    const [rowData, setRowData] = useState<IExecutiveOrder[]>(
        president?.executiveOrderList || [],
    );
    const gridRef = useRef<any>(null);

    const [colDefs] = useState<(ColDef<IExecutiveOrder> & { cellRenderer?: any })[]>([
        { field: "orderNumber", editable: true },
        { field: "pageNum", editable: true },
        { field: "yearIssued", editable: true },
        { field: "orderName", editable: true },
        {
            headerName: "Actions",
            cellRenderer: (params: ICellRendererParams) => <ActionCellRenderer<IExecutiveOrder>
                params={params}
                onChanged={onChanged}
                setError={setErrormsg}
                updateObject={postExecutiveOrder}
                deleteObject={deleteExecutiveOrder}
                rowData={rowData}
                gridRef={gridRef}
                setRowData={setRowData}
                idKey="executiveOrderId"
            />,
            editable: false,
            filter: false,
        },
    ]);

    const defaultColDef: ColDef = {
        flex: 1,
        minWidth: 100,
        editable: true,
    };

    return (
        <div>
            <div className="row">
                <div className="col-12">
                    <h2 id="hmsg">{errormsg}</h2>
                </div>
            </div>
            <div className="row">
                <div className="col-2">
                    <button
                        className="btn btn-primary"
                        onClick={() => handleAddNew(
                            blankExecutiveOrder,
                            {},
                            "executiveOrderId",
                            "presidentId",
                            president.presidentId,
                            rowData,
                            setRowData,
                            gridRef
                        )}
                    >
                        Add New
                    </button>
                </div>
            </div>
            <div className="row">
                <div className={"ag-theme-quartz"} style={{ width: "100%", height: "250px" }}>
                    <AgGridReact
                        ref={gridRef}
                        rowData={rowData}
                        columnDefs={colDefs}
                        defaultColDef={defaultColDef}
                    />
                </div>
            </div>
        </div>
    );
}
