
export default function Cookbooks() {
    return (
        <div style={styles.comingSoonBox}>
            <h2 style={styles.comingSoonText}>Coming Soon</h2>
        </div>
    );
}

const styles = {

    comingSoonBox: {
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        backgroundColor: "#eee",
        borderRadius: "10px",
        boxShadow: "0 4px 8px rgba(0,0,0,0.1)"
    },
    comingSoonText: {
        fontSize: "1.8rem",
        color: "#888",
    }
};
