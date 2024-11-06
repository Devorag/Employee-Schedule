import { createBrowserRouter } from "react-router-dom";
import Screen1 from "./Screen1";
import Screen2 from "./Screen2";
import Screen3 from "./Screen3";
import App from "./App";

const router = createBrowserRouter([
    {
        path: "/", element: <App />, children: [
            { path: "/screen1", element: <Screen1 /> },
            { path: "/screen2", element: <Screen2 /> },
            { path: "/screen3/:val?/num:?", element: <Screen3 /> },
        ]
    },

]);

export default router;