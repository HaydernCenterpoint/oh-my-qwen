# Hướng dẫn tùy biến Oh-My-Codex thành Oh-My-Qwen

Tài liệu này mô tả các thay đổi đã thực hiện để chuyển đổi từ OpenAI Codex CLI sang Qwen Code CLI.

## Tổng quan

Dự án đã được đổi tên từ `oh-my-codex` thành `oh-my-qwen` với các thay đổi chính sau:

### 1. Thay đổi tên và thương hiệu

- **Tên package**: `oh-my-codex` → `oh-my-qwen`
- **CLI binary**: `omx` → `omq`
- **Tên repo**: Tham chiếu từ Codex sang Qwen Code

### 2. Thay đổi Model

Các model mặc định đã được cập nhật trong `src/config/models.ts`:

```typescript
// Trước đây (Codex)
export const DEFAULT_FRONTIER_MODEL = 'gpt-5.4';
export const DEFAULT_STANDARD_MODEL = 'gpt-5.4-mini';
export const DEFAULT_SPARK_MODEL = 'gpt-5.3-codex-spark';

// Bây giờ (Qwen)
export const DEFAULT_FRONTIER_MODEL = 'qwen-max';
export const DEFAULT_STANDARD_MODEL = 'qwen-plus';
export const DEFAULT_SPARK_MODEL = 'qwen-turbo';
```

### 3. Thay đổi biến môi trường

```bash
# Trước đây
CODEX_HOME=~/.codex

# Bây giờ  
QWEN_CODE_HOME=~/.qwen-code
```

### 4. Các file đã cập nhật

#### Core Files
- ✅ `package.json` - Đổi tên package và binary
- ✅ `src/config/models.ts` - Cập nhật model Qwen
- ✅ `src/utils/paths.ts` - Đổi đường dẫn từ .codex sang .qwen-code
- ✅ `src/cli/omx.ts` → `src/cli/omq.ts` - Đổi tên CLI entry point
- ✅ `src/cli/index.ts` - Cập nhật tất cả tham chiếu từ codex → qwen-code
- ✅ `src/cli/constants.ts` - Đổi tên constants

#### Các thay đổi chính trong index.ts:
- `runCodex()` → `runQwen()`
- `runCodexBlocking()` → `runQwenBlocking()`
- `codexHome` → `qwenHome`
- `codexConfigPath()` → vẫn giữ nguyên nhưng trỏ đến ~/.qwen-code/config.toml
- `CODEX_HOME` → `QWEN_CODE_HOME`
- `codexEnv` → `qwenEnv`
- Tất cả message log từ `[omx]` → `[omq]`

### 5. Cài đặt

Để sử dụng oh-my-qwen, bạn cần:

1. **Cài đặt Qwen Code CLI**:
   ```bash
   npm install -g @anthropic/qwen-code  # hoặc package Qwen Code chính thức
   ```

2. **Cài đặt oh-my-qwen**:
   ```bash
   cd oh-my-qwen
   npm install
   npm run build
   npm link
   ```

3. **Sử dụng**:
   ```bash
   omq setup
   omq --high
   ```

### 6. Các skill và workflow

Tất cả các skills và workflows từ oh-my-codex được giữ nguyên:
- `$architect` - Phân tích kiến trúc
- `$executor` - Thực thi code
- `$plan` - Lập kế hoạch
- `$ralph` - Chế độ persistent execution
- `$team` - Điều phối multi-agent
- `$deep-interview` - Phỏng vấn Socratic
- Và nhiều skills khác...

### 7. AGENTS.md

File `AGENTS.md` đã được cập nhật để thay thế tất cả tham chiếu từ "Codex" sang "Qwen Code".

### 8. Thư mục làm việc

```
Trước đây:
~/.codex/           - Codex home directory
.codex/             - Project-level Codex config
.omx/               - OMX state directory

Bây giờ:
~/.qwen-code/       - Qwen Code home directory
.qwen-code/         - Project-level Qwen Code config
.omx/               - OMQ state directory (giữ nguyên)
```

## Các việc cần làm tiếp

1. **Build project**:
   ```bash
   npm run build
   ```

2. **Kiểm tra các file còn lại** cần cập nhật:
   - Docs files (README.md, docs/*.md)
   - Test files
   - Comments trong code

3. **Cập nhật cấu hình Qwen Code API**:
   - Thiết lập API key cho Qwen
   - Cấu hình endpoint nếu dùng self-hosted

4. **Test các tính năng**:
   - `omq setup`
   - `omq doctor`
   - `omq --high`
   - Các skills: `$plan`, `$architect`, `$team`

## Lưu ý quan trọng

- OMX (bây giờ là OMQ) vẫn giữ nguyên kiến trúc multi-agent orchestration
- Tất cả skills và workflows được giữ nguyên
- Chỉ thay đổi model backend từ OpenAI Codex sang Qwen Code
- Cần đảm bảo Qwen Code CLI được cài đặt và cấu hình đúng

## Hỗ trợ

Nếu gặp vấn đề, kiểm tra:
1. Qwen Code CLI đã được cài đặt chưa
2. API keys đã được cấu hình chưa
3. Biến môi trường `QWEN_CODE_HOME` có đúng không
