# App_Go
## Run it with Docker

1. Open the terminal on your computer.
2. To download the image from Docker Hub, run the following command:
   ```bash
   docker pull pam11/appgo
   ```
3. To run the container, execute the following command:
   ```bash
   docker run -p 8080:8080 pam11/appgo
   ```
4. Open your browser and go to [http://localhost:8080](http://localhost:8080) to see the "Hello World" message.
5. To stop the container, run:
   ```bash
   docker stop <container_id>
   ```
   Then, press **Control + C** to stop the execution.

## GitHub Code

1. Navigate to the folder where you want to save the project. Open the terminal and clone the repository:
   ```bash
   git clone https://github.com/PamelaCaiza11/app_go.git
   ```
2. Navigate to the project folder:
   ```bash
   cd app_go
   ```
3. To run the project locally, use:
   ```bash
   go run appgo.go
   ```
4. Open [http://localhost:8080](http://localhost:8080) in your browser.
5. You will see the "Hello World from Go" message.