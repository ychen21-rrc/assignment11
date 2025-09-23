# Coding Assignment 11 – Dockerized React App

**Student:** Yaohuang Chen  
**Course:** WEBD-3012 (273795) Business Systems Build and Testing 

This project contains a React application created with `create-react-app`.  

This assignment started by creating a new React project using the following command:

```bash
npx create-react-app assignment11
```

This command generated the initial React project structure inside a folder named `assignment11`. 
Then, the file `App.js` was modified so that it displays `<h1>Codin 1</h1>`.

When run inside Docker, the application displays an `<h1>` with the text **"Codin 1"** at [http://localhost:7775](http://localhost:7775).

The image also satisfies the assignment requirements:

- **Workdir inside image:** `/chen_yaohuang_site`
- **Container name (at runtime):** `chen_yaohuang_coding_assignment11`
- **Port:** `7775`

---

## 1) Prerequisites

- Docker Desktop (Windows/Mac) or Docker Engine (Linux)
- Internet connection (needed for first build to download npm packages)

---

## 2) Build the image

In the root folder of this project (where the `Dockerfile` is located), run:

```bash
docker build -t chen_yaohuang_coding_assignment11:1.0 .
```

---

## 3) Run the container

After building, start the container:

```bash
docker run --rm --name chen_yaohuang_coding_assignment11 -p 7775:7775   chen_yaohuang_coding_assignment11:1.0
```


Open in browser: [http://localhost:7775](http://localhost:7775)  
You should see a page with `<h1>Codin 1</h1>`.