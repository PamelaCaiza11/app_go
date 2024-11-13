# Build stage
FROM golang:1.23-alpine AS build_stage

# Set the working directory
WORKDIR /app

# Copy go.mod and go.sum files
COPY go.mod go.sum ./

# Download dependencies
RUN go mod tidy

# Copy the source code
COPY . .

# Compile the application
RUN go build -o appgo ./appgo.go

# Runtime stage
FROM alpine:latest AS runtime_stage

# Copy the binary from the build stage
COPY --from=build_stage /app/appgo /appgo

# Expose port 8080
EXPOSE 8080

# Run the binary
CMD ["/appgo"]