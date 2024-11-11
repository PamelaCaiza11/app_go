# Etapa de construcción
FROM golang:1.23-alpine AS build_stage

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos go.mod y go.sum
COPY go.mod go.sum ./

# Descarga las dependencias
RUN go mod tidy

# Copia el código fuente
COPY . .

# Compila la aplicación
RUN go build -o appgo ./appgo.go

# Etapa de ejecución
FROM alpine:latest AS runtime_stage

# Copia el binario desde la etapa de construcción
COPY --from=build_stage /app/appgo /appgo

# Expón el puerto 8080
EXPOSE 8080

# Ejecuta el binario
CMD ["/appgo"]