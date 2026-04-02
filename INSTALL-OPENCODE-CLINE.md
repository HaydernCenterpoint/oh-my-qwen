# Hướng dẫn cài đặt Oh-My-Qwen Skills cho OpenCode và Cline

Vì **OpenCode** và **Cline** là AI coding agents dạng chat (không phải CLI như Codex), cách cài đặt skills sẽ khác với oh-my-codex gốc.

---

## 📋 Tổng quan

| Công cụ | Loại | Cách cài skills |
|---------|------|-----------------|
| **Cline** | VS Code Extension | Custom Instructions / Custom Modes |
| **OpenCode** | Terminal/Chat Agent | System Prompt / Custom Commands |
| **Oh-My-Qwen (OMQ)** | CLI Layer | `omq setup` (chỉ cho Qwen Code CLI) |

---

## 🤖 Cline (VS Code Extension)

### Cách 1: Custom Instructions (ĐƠN GIẢN NHẤT)

1. **Mở Cline trong VS Code**
   - Cài đặt extension: [Cline](https://marketplace.visualstudio.com/items?itemName=saoudrizwan.claude-dev)
   - Mở Cline từ sidebar

2. **Tạo file custom instructions**
   ```bash
   # Tạo file trong project của bạn
   .cline/instructions/omq-skills.md
   ```

3. **Nội dung file `.cline/instructions/omq-skills.md`**:
   ```markdown
   # Oh-My-Qwen Skills Integration

   ## Available Workflows

   ### Role Keywords
   - `$architect` - Phân tích kiến trúc, tradeoffs, boundaries
   - `$executor` - Implementation tập trung
   - `$planner` - Tạo work plans và sequencing
   - `$debugger` - Root-cause analysis
   - `$verifier` - Completion evidence và validation

   ### Workflow Skills
   - `$plan` - Lập kế hoạch trước khi implement
   - `$ralph` - Persistent execution mode (không dừng cho đến khi hoàn thành)
   - `$team` - Multi-agent coordination cho task lớn
   - `$deep-interview` - Socratic interview để làm rõ requirements
   - `$analyze` - Deep analysis và investigation
   - `$code-review` - Code review có hệ thống
   - `$security-review` - Security audit
   - `$tdd` - Test-driven development workflow

   ## Usage Pattern

   Khi tôi sử dụng các keywords trên, hãy:
   1. Nhận diện workflow được yêu cầu
   2. Thực hiện đúng quy trình của workflow đó
   3. Lưu trữ state vào `.omx/` directory khi cần
   4. Báo cáo progress rõ ràng

   ## Project Structure
   - `.omx/state/` - Runtime state
   - `.omx/plans/` - Plans và specs
   - `.omx/logs/` - Session logs
   - `AGENTS.md` - Orchestration brain
   ```

4. **Cấu hình Cline để load custom instructions**
   - Mở Cline settings (gear icon)
   - Tìm "Custom Instructions"
   - Add path: `.cline/instructions/omq-skills.md`

---

### Cách 2: Custom Modes (Nâng cao)

1. **Tạo file cấu hình mode**
   ```bash
   .cline/modes/architect-mode.md
   ```

2. **Nội dung `.cline/modes/architect-mode.md`**:
   ```markdown
   # Architect Mode

   You are in Architect Mode. Your role is to:
   - Analyze codebase structure and patterns
   - Identify tradeoffs and boundaries
   - Provide high-level design recommendations
   - NOT implement code unless explicitly asked

   ## Process
   1. First, understand the current architecture
   2. Identify key components and relationships
   3. Analyze tradeoffs for proposed changes
   4. Provide clear, actionable recommendations

   ## Output Format
   - Start with current state analysis
   - List identified issues/opportunities
   - Provide 2-3 alternative approaches with pros/cons
   - End with recommended approach
   ```

3. **Kích hoạt mode trong chat**:
   ```
   /mode architect
   Analyze the authentication flow in this project
   ```

---

### Cách 3: MCP Servers (Tích hợp đầy đủ nhất)

Oh-My-Qwen có MCP servers mà Cline có thể sử dụng:

1. **Cấu hình MCP trong Cline**
   - Mở Cline settings
   - Tìm "MCP Servers"
   - Add các servers từ oh-my-qwen:

2. **File cấu hình `cline_mcp_config.json`**:
   ```json
   {
     "mcpServers": {
       "omx_state": {
         "command": "node",
         "args": ["path/to/oh-my-qwen/dist/mcp/state-server.js"],
         "disabled": false
       },
       "omx_memory": {
         "command": "node",
         "args": ["path/to/oh-my-qwen/dist/mcp/memory-server.js"],
         "disabled": false
       },
       "omx_code_intel": {
         "command": "node",
         "args": ["path/to/oh-my-qwen/dist/mcp/code-intel-server.js"],
         "disabled": false
       }
     }
   }
   ```

3. **Build oh-my-qwen trước**:
   ```bash
   cd oh-my-qwen
   npm install
   npm run build
   ```

---

## 🔓 OpenCode

### Cách 1: System Prompt Customization

1. **Tìm file cấu hình OpenCode**
   ```bash
   # Thường ở một trong các vị trí sau:
   ~/.opencode/config.yaml
   ~/.config/opencode/config.yaml
   ./opencode.yaml
   ```

2. **Thêm custom system prompt**:
   ```yaml
   system_prompt: |
     You are an AI coding assistant with Oh-My-Qwen skills integration.
     
     ## Available Workflows
     
     When the user prefixes a message with $name, activate that workflow:
     
     - $architect: Analysis, boundaries, tradeoffs
     - $executor: Focused implementation
     - $plan: Planning before implementation
     - $ralph: Persistent execution (don't stop until complete)
     - $team: Multi-agent coordination
     - $deep-interview: Socratic clarification
     - $analyze: Deep investigation
     - $code-review: Systematic code review
     
     ## State Management
     - Store plans in .omx/plans/
     - Store state in .omx/state/
     - Store logs in .omx/logs/
     
     ## Verification
     Always verify before claiming completion:
     - Run tests if applicable
     - Check for errors
     - Validate the solution works
   ```

---

### Cách 2: Custom Commands

1. **Tạo file commands**
   ```bash
   ~/.opencode/commands/omq-skills.yaml
   ```

2. **Nội dung**:
   ```yaml
   commands:
     architect:
       description: "Analyze architecture and tradeoffs"
       prompt: |
         Act as a software architect. Analyze the following:
         - Current structure and patterns
         - Tradeoffs and constraints
         - Recommended approaches
         
         Task: {{input}}
     
     plan:
       description: "Create implementation plan"
       prompt: |
         Create a detailed implementation plan:
         1. Understand requirements
         2. Break down into steps
         3. Identify risks
         4. Provide timeline estimate
         
         Task: {{input}}
     
     ralph:
       description: "Persistent execution mode"
       prompt: |
         Enter persistent execution mode:
         - Do not stop until task is complete
         - Overcome obstacles autonomously
         - Report progress at each step
         - Verify completion thoroughly
         
         Task: {{input}}
     
     team:
       description: "Multi-agent coordination"
       prompt: |
         Coordinate multiple specialized agents:
         1. Break task into subtasks
         2. Assign to appropriate roles
         3. Synthesize results
         4. Verify integration
         
         Task: {{input}}
   ```

3. **Sử dụng trong chat**:
   ```
   /architect Analyze the authentication flow
   /plan Build a REST API with user management
   /ralph Fix all failing tests
   ```

---

### Cách 3: Agent Profiles

1. **Tạo agent profiles**
   ```bash
   ~/.opencode/agents/architect.yaml
   ```

2. **Nội dung**:
   ```yaml
   name: Architect
   description: Software architecture analysis
   model: qwen-max
   temperature: 0.3
   system_prompt: |
     You are a software architect specializing in:
     - System design and architecture
     - Tradeoff analysis
     - Technology selection
     - Scalability and performance
     
     Process:
     1. Understand current state
     2. Identify constraints
     3. Evaluate alternatives
     4. Recommend approach
   ```

---

## 📦 Cài đặt nhanh cho cả hai

### Script tự động hóa

Tạo file `setup-omq-skills.sh`:

```bash
#!/bin/bash

# Oh-My-Qwen Skills Setup for OpenCode and Cline

echo "🚀 Setting up Oh-My-Qwen Skills..."

# Create directories
mkdir -p .cline/instructions
mkdir -p .cline/modes
mkdir -p .omx/state
mkdir -p .omx/plans
mkdir -p .omx/logs

# Copy skills
cp -r path/to/oh-my-qwen/skills/* .cline/instructions/

# Create AGENTS.md
cat > AGENTS.md << 'EOF'
# Project Agents

This project uses Oh-My-Qwen skills for workflow orchestration.

## Available Skills
- `$architect` - Architecture analysis
- `$executor` - Implementation
- `$plan` - Planning
- `$ralph` - Persistent execution
- `$team` - Multi-agent coordination

## State Directory
- `.omx/` - Runtime state, plans, logs
EOF

echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. For Cline: Add .cline/instructions/omq-skills.md to Custom Instructions"
echo "2. For OpenCode: Add system prompt to config.yaml"
echo "3. Start using $name keywords in your chats!"
```

---

## 🎯 Sử dụng trong thực tế

### Ví dụ với Cline

```
User: $architect Analyze our current authentication system

Cline: [Switches to architect mode]
I'll analyze your authentication system...

[Performs analysis]

Key findings:
1. Current: JWT-based auth with 15min expiry
2. Issues: No refresh token, no rate limiting
3. Recommendations: Add refresh tokens, implement rate limiting

Tradeoffs:
- Option A: Redis-backed sessions (faster, adds dependency)
- Option B: DB-backed sessions (slower, no new deps)

Recommended: Option A for scalability
```

### Ví dụ với OpenCode

```
User: /plan Build a REST API with user management

OpenCode: [Activates plan workflow]
Creating implementation plan...

Phase 1: Setup (2 hours)
- Initialize project structure
- Configure database
- Setup authentication

Phase 2: Core API (4 hours)
- User CRUD operations
- Authentication endpoints
- Authorization middleware

Phase 3: Testing (2 hours)
- Unit tests
- Integration tests
- E2E tests

Total estimated time: 8 hours
```

---

## ⚠️ Lưu ý quan trọng

1. **Không phải tất cả features đều hoạt động**
   - Team mode với tmux sẽ không hoạt động (chỉ dành cho CLI)
   - HUD và status bars không áp dụng
   - MCP servers cần build oh-my-qwen trước

2. **Custom Instructions là cách tốt nhất**
   - Đơn giản nhất
   - Hoạt động ngay
   - Không cần build hay cài đặt phức tạp

3. **Sử dụng AGENTS.md**
   - Tạo file `AGENTS.md` trong project root
   - Định nghĩa workflows và conventions
   - Cline và OpenCode sẽ đọc file này

4. **State management**
   - Tạo thư mục `.omx/` để lưu state
   - Lưu plans vào `.omx/plans/`
   - Lưu logs vào `.omx/logs/`

---

## 🔗 Tham khảo thêm

- [Cline Custom Instructions](https://docs.cline.bot/custom-instructions)
- [Cline MCP Integration](https://docs.cline.bot/mcp)
- [OpenCode Documentation](https://opencode.ai)
- [Oh-My-Qwen Skills](./skills/)
- [Oh-My-Qwen Agents](./prompts/)
