FROM node:20-alpine
WORKDIR /app
COPY package.json .
RUN npm install --production
COPY . .
ENV MCP_ENDPOINT=https://www.mcpforge.tech/api/servers/swagger-petstore-openapi-3-0-susoj
CMD ["node", "-e", "console.log('Swagger Petstore MCP - Remote endpoint:', process.env.MCP_ENDPOINT)"]
