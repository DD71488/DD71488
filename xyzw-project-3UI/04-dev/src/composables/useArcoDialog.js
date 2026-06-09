import { Modal } from '@arco-design/web-vue'

export function useArcoDialog() {
  return {
    success: (opts) => Modal.success(opts),
    error: (opts) => Modal.error(opts),
    warning: (opts) => Modal.warning(opts),
    info: (opts) => Modal.info(opts),
    confirm: (opts) => Modal.confirm(opts),
  }
}