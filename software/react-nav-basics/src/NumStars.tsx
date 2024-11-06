interface Props {
    num: number
}

export default function NumStars({ num }: Props) {
    return (
        <div>{"*".repeat(num)}</div>
    )
}
