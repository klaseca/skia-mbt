// Generated file. Do not edit by hand.

#include <include/c/sk_data.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>

typedef struct {
  sk_data_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_data_resource_t;

static void moonbit_skia_data_release(void *ptr) {
  if (ptr != NULL) sk_data_unref((const sk_data_t *)ptr);
}

static void moonbit_skia_data_finalize(void *self) {
  moonbit_skia_data_resource_t *resource = (moonbit_skia_data_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_data_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_data_unref(void *self) {
  moonbit_skia_data_finalize(self);
}

sk_data_t *moonbit_skia_data_ptr(void *self) {
  moonbit_skia_data_resource_t *resource = (moonbit_skia_data_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_data_make(sk_data_t *ptr, int32_t owns_ptr) {
  moonbit_skia_data_resource_t *resource = (moonbit_skia_data_resource_t *)moonbit_make_external_object(
    moonbit_skia_data_finalize, sizeof(moonbit_skia_data_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_data_make_owned(sk_data_t *ptr) {
  return moonbit_skia_data_make(ptr, 1);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_data_is_null(void *self) {
  return moonbit_skia_data_ptr(self) == NULL;
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_data_new_empty(void) {
  return moonbit_skia_data_make_owned(sk_data_new_empty());
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_data_new_with_copy(moonbit_bytes_t src, uint64_t length) {
  return moonbit_skia_data_make_owned(sk_data_new_with_copy(((const void *)src), length));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_data_new_subset(void * src, uint64_t offset, uint64_t length) {
  return moonbit_skia_data_make_owned(sk_data_new_subset(moonbit_skia_data_ptr(src), offset, length));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_data_ref(void * arg0) {
  sk_data_ref(moonbit_skia_data_ptr(arg0));
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_data_get_size(void * arg0) {
  return sk_data_get_size(moonbit_skia_data_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_data_new_from_file(moonbit_bytes_t path) {
  return moonbit_skia_data_make_owned(sk_data_new_from_file((const char *)path));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_data_new_from_stream(sk_stream_t * stream, uint64_t length) {
  return moonbit_skia_data_make_owned(sk_data_new_from_stream(stream, length));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_data_new_uninitialized(uint64_t size) {
  return moonbit_skia_data_make_owned(sk_data_new_uninitialized(size));
}
