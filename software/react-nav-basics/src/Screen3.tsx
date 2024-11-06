import { useParams } from "react-router-dom"
import NumStars from "./NumStars";
import NumCount from "./NumCount";


export default function Screen3() {
    const {val, num} = useParams();
    const numvalue = Number(num) || 0;
    return (
        <>
        <div>Screen3 Dynamic Path val = {val} num={num}</div>
        <NumStars num={numvalue}/>
        <hr/>
        <NumCount num={numvalue}/>
        </>
    )
}
