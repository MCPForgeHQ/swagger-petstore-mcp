# Swagger Petstore MCP

[![Verified by MCPForge](https://www.mcpforge.tech/api/badge/verified/swagger-petstore-mcp-susoj)](https://www.mcpforge.tech/verified/swagger-petstore-mcp-susoj)

MCP server for the [Swagger Petstore API](https://petstore3.swagger.io), generated with [MCPForge](https://mcpforge.tech).

The Petstore is a canonical OpenAPI 3.0 demo API. This MCP server exposes all 19 Petstore endpoints as tools that Claude and other MCP-compatible AI agents can call directly.

---

## Live Endpoint

```
https://www.mcpforge.tech/api/servers/swagger-petstore-openapi-3-0-susoj
```

No setup required — connect Claude Desktop or any MCP client to this endpoint and start using it immediately.

---

## Usage

### Claude Desktop

Add this to your `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "swagger-petstore-mcp": {
      "url": "https://www.mcpforge.tech/api/servers/swagger-petstore-openapi-3-0-susoj",
      "transport": "http"
    }
  }
}
```

Config file location:
- **macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
- **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`

### Cursor

Add to your Cursor MCP settings:

```json
{
  "mcpServers": {
    "swagger-petstore-mcp": {
      "url": "https://www.mcpforge.tech/api/servers/swagger-petstore-openapi-3-0-susoj",
      "transport": "http"
    }
  }
}
```

---

## Available Tools

19 tools across three risk tiers:

### Read-only (6 tools)

| Tool | Description |
|------|-------------|
| `getPetById` | Find a pet by its ID |
| `findPetsByStatus` | Find pets by status (available, pending, sold) |
| `findPetsByTags` | Find pets by tags |
| `getInventory` | Returns pet inventories by status |
| `getOrderById` | Find a purchase order by ID |
| `getUserByName` | Get user by username |

### Side Effect (10 tools — write operations)

| Tool | Description |
|------|-------------|
| `addPet` | Add a new pet to the store |
| `updatePet` | Update an existing pet |
| `updatePetWithForm` | Update a pet using form data |
| `uploadFile` | Upload an image file for a pet |
| `placeOrder` | Place an order for a pet |
| `createUser` | Create a new user |
| `createUsersWithList` | Create a list of users |
| `updateUser` | Update an existing user |
| `loginUser` | Log user into the system |
| `logoutUser` | Log out the current user session |

### Critical — Disabled by default (3 tools)

| Tool | Description |
|------|-------------|
| `deletePet` | Delete a pet by ID _(disabled)_ |
| `deleteOrder` | Delete a purchase order _(disabled)_ |
| `deleteUser` | Delete a user account _(disabled)_ |

> Destructive tools are disabled by default. Enable them in your MCPForge dashboard under **Tools → Permissions** if needed.

---

## Security Report

**Security Score: 75 / 100 · Good**

| Dimension | Result |
|-----------|--------|
| Tool Quality Score | 89 / 100 |
| Read-only tools | 6 |
| Side-effect tools | 10 |
| Critical tools (blocked) | 3 |
| Governance controls | 3 / 5 |

Full report: [mcpforge.tech/examples/petstore-security-report](https://www.mcpforge.tech/examples/petstore-security-report)

---

## Generated with MCPForge

[MCPForge](https://mcpforge.tech) converts any OpenAPI spec into a hosted, governed MCP server in under 60 seconds.

- **Verify** any MCP server for free at [mcpforge.tech/verify](https://mcpforge.tech/verify)
- **Browse** the verified MCP directory at [mcpforge.tech/verified](https://mcpforge.tech/verified)
- **Generate** your own MCP server at [mcpforge.tech](https://mcpforge.tech)
