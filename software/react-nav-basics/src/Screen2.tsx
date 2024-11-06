import { useState } from "react"
import { useSearchParams } from "react-router-dom"


export default function Screen2() {
    const [params] = useSearchParams();
    const val = params.get("val");
    return (
        <div>Screen2 query string val = {val}</div>
    )
}
