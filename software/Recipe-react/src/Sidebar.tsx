import { useEffect, useState } from 'react';
import { ICuisine } from './DataInterface';
import { fetchCuisines } from './DataUtil';
import CuisineButton from './CuisineButton';

interface Props {
    onCuisineSelected: (cuisineName: string) => void;
}

export default function Sidebar({ onCuisineSelected }: Props) {
    const [cuisinelist, setCuisineList] = useState<ICuisine[]>([]);
    const [selectedCuisineId, setSelectedCuisineId] = useState(0);

    useEffect(() => {
        const fetchData = async () => {
            const data = await fetchCuisines();
            setCuisineList(data);
            if (data.length > 0 && selectedCuisineId === 0) {
                const initialCuisine = data[0];
                setSelectedCuisineId(initialCuisine.cuisineId);
                if (initialCuisine.cuisineName) {
                    onCuisineSelected(initialCuisine.cuisineName);
                }
            }
        };
        fetchData();
    }, []);

    const handleSelectedCuisine = (cuisineId: number) => {
        setSelectedCuisineId(cuisineId);
        const selectedCuisine = cuisinelist.find(c => c.cuisineId === cuisineId);
        if (selectedCuisine) {
            onCuisineSelected(selectedCuisine.cuisineName);
        }
    };


    return (
        <>
            {cuisinelist.map(cuisine =>
                <div key={cuisine.cuisineId}>
                    <CuisineButton
                        cuisine={cuisine}
                        onSelected={() => handleSelectedCuisine(cuisine.cuisineId)}
                        isSelected={cuisine.cuisineId === selectedCuisineId}
                    />
                </div>
            )}
        </>
    );
}
