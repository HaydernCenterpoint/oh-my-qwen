# HÆ°á»›ng dáº«n cÃ i Ä‘áº·t Oh-My-Qwen Skills cho OpenCode vÃ  Cline

VÃ¬ **OpenCode** vÃ  **Cline** lÃ  AI coding agents dáº¡ng chat (khÃ´ng pháº£i CLI nhÆ° Codex), cÃ¡ch cÃ i Ä‘áº·t skills sáº½ khÃ¡c vá»›i oh-my-codex gá»‘c.

---

## ðŸ“‹ Tá»•ng quan

| CÃ´ng cá»¥ | Loáº¡i | CÃ¡ch cÃ i skills |
|---------|------|-----------------|
| **Cline** | VS Code Extension | Custom Instructions / Custom Modes |
| **OpenCode** | Terminal/Chat Agent | System Prompt / Custom Commands |
| **Oh-My-Qwen (OMQ)** | CLI Layer | `omq setup` (chá»‰ cho Qwen Code CLI) |

---

## ðŸ¤– Cline (VS Code Extension)

### CÃ¡ch 1: Custom Instructions (ÄÆ N GIáº¢N NHáº¤T)

1. **Má»Ÿ Cline trong VS Code**
   - CÃ i Ä‘áº·t extension: [Cline](https://marketplace.visualstudio.com/items?itemName=saoudrizwan.claude-dev)
   - Má»Ÿ Cline tá»« sidebar

2. **Táº¡o file custom instructions**
   ```bash
   # Táº¡o file trong project cá»§a báº¡n
   .cline/instructions/omq-skills.md
   ```

3. **Ná»™i dung file `.cline/instructions/omq-skills.md`**:
   ```markdown
   # Oh-My-Qwen Skills Integration

   ## Available Workflows

   ### Role Keywords
   - `$architect` - PhÃ¢n tÃ­ch kiáº¿n trÃºc, tradeoffs, boundaries
   - `$executor` - Implementation táº­p trung
   - `$planner` - Táº¡o work plans vÃ  sequencing
   - `$debugger` - Root-cause analysis
   - `$verifier` - Completion evidence vÃ  validation

   ### Workflow Skills
   - `$plan` - Láº­p káº¿ hoáº¡ch trÆ°á»›c khi implement
   - `$ralph` - Persistent execution mode (khÃ´ng dá»«ng cho Ä‘áº¿n khi hoÃ n thÃ nh)
   - `$team` - Multi-agent coordination cho task lá»›n
   - `$deep-interview` - Socratic interview Ä‘á»ƒ lÃ m rÃµ requirements
   - `$analyze` - Deep analysis vÃ  investigation
   - `$code-review` - Code review cÃ³ há»‡ thá»‘ng
   - `$security-review` - Security audit
   - `$tdd` - Test-driven development workflow

   ## Usage Pattern

   Khi tÃ´i sá»­ dá»¥ng cÃ¡c keywords trÃªn, hÃ£y:
   1. Nháº­n diá»‡n workflow Ä‘Æ°á»£c yÃªu cáº§u
   2. Thá»±c hiá»‡n Ä‘Ãºng quy trÃ¬nh cá»§a workflow Ä‘Ã³
   3. LÆ°u trá»¯ state vÃ o `.QMX/` directory khi cáº§n
   4. BÃ¡o cÃ¡o progress rÃµ rÃ ng

   ## Project Structure
   - `.QMX/state/` - Runtime state
   - `.QMX/plans/` - Plans vÃ  specs
   - `.QMX/logs/` - Session logs
   - `AGENTS.md` - Orchestration brain
   ```

4. **Cáº¥u hÃ¬nh Cline Ä‘á»ƒ load custom instructions**
   - Má»Ÿ Cline settings (gear icon)
   - TÃ¬m "Custom Instructions"
   - Add path: `.cline/instructions/omq-skills.md`

---

### CÃ¡ch 2: Custom Modes (NÃ¢ng cao)

1. **Táº¡o file cáº¥u hÃ¬nh mode**
   ```bash
   .cline/modes/architect-mode.md
   ```

2. **Ná»™i dung `.cline/modes/architect-mode.md`**:
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

3. **KÃ­ch hoáº¡t mode trong chat**:
   ```
   /mode architect
   Analyze the authentication flow in this project
   ```

---

### CÃ¡ch 3: MCP Servers (TÃ­ch há»£p Ä‘áº§y Ä‘á»§ nháº¥t)

Oh-My-Qwen cÃ³ MCP servers mÃ  Cline cÃ³ thá»ƒ sá»­ dá»¥ng:

1. **Cáº¥u hÃ¬nh MCP trong Cline**
   - Má»Ÿ Cline settings
   - TÃ¬m "MCP Servers"
   - Add cÃ¡c servers tá»« oh-my-qwen:

2. **File cáº¥u hÃ¬nh `cline_mcp_config.json`**:
   ```json
   {
     "mcpServers": {
       "QMX_state": {
         "command": "node",
         "args": ["path/to/oh-my-qwen/dist/mcp/state-server.js"],
         "disabled": false
       },
       "QMX_memory": {
         "command": "node",
         "args": ["path/to/oh-my-qwen/dist/mcp/memory-server.js"],
         "disabled": false
       },
       "QMX_code_intel": {
         "command": "node",
         "args": ["path/to/oh-my-qwen/dist/mcp/code-intel-server.js"],
         "disabled": false
       }
     }
   }
   ```

3. **Build oh-my-qwen trÆ°á»›c**:
   ```bash
   cd oh-my-qwen
   npm install
   npm run build
   ```

---

## ðŸ”“ OpenCode

### CÃ¡ch 1: System Prompt Customization

1. **TÃ¬m file cáº¥u hÃ¬nh OpenCode**
   ```bash
   # ThÆ°á»ng á»Ÿ má»™t trong cÃ¡c vá»‹ trÃ­ sau:
   ~/.opencode/config.yaml
   ~/.config/opencode/config.yaml
   ./opencode.yaml
   ```

2. **ThÃªm custom system prompt**:
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
     - Store plans in .QMX/plans/
     - Store state in .QMX/state/
     - Store logs in .QMX/logs/
     
     ## Verification
     Always verify before claiming completion:
     - Run tests if applicable
     - Check for errors
     - Validate the solution works
   ```

---

### CÃ¡ch 2: Custom Commands

1. **Táº¡o file commands**
   ```bash
   ~/.opencode/commands/omq-skills.yaml
   ```

2. **Ná»™i dung**:
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

3. **Sá»­ dá»¥ng trong chat**:
   ```
   /architect Analyze the authentication flow
   /plan Build a REST API with user management
   /ralph Fix all failing tests
   ```

---

### CÃ¡ch 3: Agent Profiles

1. **Táº¡o agent profiles**
   ```bash
   ~/.opencode/agents/architect.yaml
   ```

2. **Ná»™i dung**:
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

## ðŸ“¦ CÃ i Ä‘áº·t nhanh cho cáº£ hai

### Script tá»± Ä‘á»™ng hÃ³a

Táº¡o file `setup-omq-skills.sh`:

```bash
#!/bin/bash

# Oh-My-Qwen Skills Setup for OpenCode and Cline

echo "ðŸš€ Setting up Oh-My-Qwen Skills..."

# Create directories
mkdir -p .cline/instructions
mkdir -p .cline/modes
mkdir -p .QMX/state
mkdir -p .QMX/plans
mkdir -p .QMX/logs

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
- `.QMX/` - Runtime state, plans, logs
EOF

echo "âœ… Setup complete!"
echo ""
echo "Next steps:"
echo "1. For Cline: Add .cline/instructions/omq-skills.md to Custom Instructions"
echo "2. For OpenCode: Add system prompt to config.yaml"
echo "3. Start using $name keywords in your chats!"
```

---

## ðŸŽ¯ Sá»­ dá»¥ng trong thá»±c táº¿

### VÃ­ dá»¥ vá»›i Cline

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

### VÃ­ dá»¥ vá»›i OpenCode

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

## âš ï¸ LÆ°u Ã½ quan trá»ng

1. **KhÃ´ng pháº£i táº¥t cáº£ features Ä‘á»u hoáº¡t Ä‘á»™ng**
   - Team mode vá»›i tmux sáº½ khÃ´ng hoáº¡t Ä‘á»™ng (chá»‰ dÃ nh cho CLI)
   - HUD vÃ  status bars khÃ´ng Ã¡p dá»¥ng
   - MCP servers cáº§n build oh-my-qwen trÆ°á»›c

2. **Custom Instructions lÃ  cÃ¡ch tá»‘t nháº¥t**
   - ÄÆ¡n giáº£n nháº¥t
   - Hoáº¡t Ä‘á»™ng ngay
   - KhÃ´ng cáº§n build hay cÃ i Ä‘áº·t phá»©c táº¡p

3. **Sá»­ dá»¥ng AGENTS.md**
   - Táº¡o file `AGENTS.md` trong project root
   - Äá»‹nh nghÄ©a workflows vÃ  conventions
   - Cline vÃ  OpenCode sáº½ Ä‘á»c file nÃ y

4. **State management**
   - Táº¡o thÆ° má»¥c `.QMX/` Ä‘á»ƒ lÆ°u state
   - LÆ°u plans vÃ o `.QMX/plans/`
   - LÆ°u logs vÃ o `.QMX/logs/`

---

## ðŸ”— Tham kháº£o thÃªm

- [Cline Custom Instructions](https://docs.cline.bot/custom-instructions)
- [Cline MCP Integration](https://docs.cline.bot/mcp)
- [OpenCode Documentation](https://opencode.ai)
- [Oh-My-Qwen Skills](./skills/)
- [Oh-My-Qwen Agents](./prompts/)

