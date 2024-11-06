interface Props {
    num: number
}

export default function NumCount({ num }: Props) {
    let s = "";
    for (let i = 0; i <= num; i++) {
        s = s + i + ", ";
    }
    return (
        <div>NumCount</div>
    )
}
