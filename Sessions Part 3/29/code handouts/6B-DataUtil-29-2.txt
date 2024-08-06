import { FieldValues } from "react-hook-form";
import { IColor, IParty, IPresident, IExecutiveOrder, IPresidentMedal, IMedal, IDashboard } from "./DataInterfaces";
import { createAPI, getUserStore } from "@charliecpu/reactutils";

let baseurl = import.meta.env.VITE_API_URL;

function api() {
    const sessionkey = getUserStore(baseurl).getState().sessionKey;
    return createAPI(baseurl, sessionkey);
}

function formatPresidentDates(president: IPresident): IPresident {
    return {
        ...president,
        dateBorn: formatDate(president.dateBorn),
        dateDied: formatDate(president.dateDied)
    };
}

function formatDate(date: Date | string | null): string {
    if (!date) return "";
    const d = new Date(date);
    const month = ("0" + (d.getMonth() + 1)).slice(-2);
    const day = ("0" + d.getDate()).slice(-2);
    return `${d.getFullYear()}-${month}-${day}`;
}

export async function fetchDashboard() {
    return await api().fetchData<IDashboard[]>("app");
}

export async function fetchParties() {
    return await api().fetchData<IParty[]>("party");
}

export async function fetchPresidentByPartyId(partyId: number) {
    const presidents = await api().fetchData<IPresident[]>(`president/getbyparty/${partyId}`);
    return presidents.map(formatPresidentDates);
}

export async function fetchColors() {
    return await api().fetchData<IColor[]>("Party/colors");
}

export async function postParty(form: FieldValues) {
    return api().postData<IParty>("party", form);
}

export async function deleteParty(partyId: number) {
    return api().deleteData<IParty>(`party?id=${partyId}`);
}

export async function postPresident(form: FieldValues) {
    const president = await api().postData<IPresident>("president", form);
    return formatPresidentDates(president);
}

export async function deletePresident(PresidentId: number) {
    const president = await api().deleteData<IPresident>(`president?id=${PresidentId}`);
    return formatPresidentDates(president);
}

export async function postExecutiveOrder(form: FieldValues) {
    return api().postData<IExecutiveOrder>("executiveorder", form);
}

export async function deleteExecutiveOrder(executiveorder: IExecutiveOrder) {
    return api().deleteData<IExecutiveOrder>(`executiveorder?id=${executiveorder.executiveOrderId}`);
}
export async function fetchMedals() {
    return await api().fetchData<IMedal[]>("presidentmedal/medals");
}

export async function postPresidentMedal(form: FieldValues) {
    return api().postData<IPresidentMedal>("presidentmedal", form);

}

export async function deletePresidentMedal(presidentmedal: IPresidentMedal) {
    return api().deleteData<IPresidentMedal>(`presidentmedal?id=${presidentmedal.presidentMedalId}`);

}



export const blankParty: IParty = {
    partyId: 0,
    partyName: "",
    partyColor: "",
    colorId: 0,
    yearStart: 0,
    partyDesc: "",
    errorMessage: ""
};

export const blankPresident: IPresident = {
    presidentId: 0,
    partyId: 0,
    num: 0,
    firstName: "",
    lastName: "",
    dateBorn: new Date(),
    dateDied: null,
    termStart: 0,
    termEnd: null,
    errorMessage: "",
    executiveOrderList: [] as IExecutiveOrder[],
    presidentMedalList: [] as IPresidentMedal[]
};

export const blankExecutiveOrder: IExecutiveOrder = {
    executiveOrderId: 0,
    presidentId: 0,
    orderNumber: 0,
    pageNum: 0,
    yearIssued: 0,
    orderName: "",
    reference: "",
    upheldByCourt: false,
    dateInserted: new Date(),
    errorMessage: ""
};

export const blankPresidentMedal: IPresidentMedal = {
    presidentMedalId: 0,
    presidentId: 0,
    medalId: 0,
    medalName: ""

}