import { Message } from '@arco-design/web-vue'

export function useArcoMessage() {
  return {
    success: (content) => Message.success(content),
    error: (content) => Message.error(content),
    warning: (content) => Message.warning(content),
    info: (content) => Message.info(content),
    loading: (content) => Message.loading(content),
  }
}