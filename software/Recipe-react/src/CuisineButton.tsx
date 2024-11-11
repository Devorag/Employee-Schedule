import { ICuisine } from './DataInterface'

interface Props {
    cuisine: ICuisine;
    isSelected: boolean;
    onSelected: () => void;
}

export default function CuisineButton({ cuisine, isSelected, onSelected }: Props) {
    return (
        <div onClick={onSelected} className={`btn ${isSelected ? "bg-secondary" : ""} `}>
            <figure className="figure">
                <img src={`./images/CuisineImages/${cuisine.cuisineName}.jpg`} className="figure-img img-fluid rounded" alt={cuisine.cuisineName} style={{ width: '100px', height: '100px', objectFit: 'cover' }} />
                <figcaption className="figure-caption text-center">{cuisine.cuisineName}</figcaption>
            </figure>
        </div>
    )
};
