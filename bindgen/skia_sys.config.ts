import { defineConfig } from 'moonbit-bindgen/c'

export const skiaSysConfig = defineConfig({
  projectRoot: '..',
  includeDir: 'externals/skia/include/c',
  headers: [
    'sk_types.h',
    'sk_general.h',
    'sk_graphics.h',
    'sk_data.h',
    'sk_surface.h',
    'sk_canvas.h',
    'sk_font.h',
    'sk_typeface.h',
    'sk_paint.h',
    'sk_path.h',
    'sk_image.h',
  ],
  outputDir: 'modules/skia-sys/src',
  functionMode: 'discover',
  unsupportedPolicy: 'report',
  renames: {
    types: {
      sk_string_t: 'StringLib',
    },
  },
  functions: [
    {
      name: 'sk_font_measure_text',
      params: {
        bounds: {
          passing: 'null',
        },
        paint: {
          passing: 'null',
        },
      },
    },
    {
      name: 'sk_fontmgr_legacy_create_typeface',
      params: {
        familyName: {
          passing: 'null',
        },
      },
    },
    {
      name: 'sk_get_surface',
      return: {
        lifetime: 'retained',
      },
    },
    {
      name: 'sk_surface_get_canvas',
      return: {
        lifetime: {
          kind: 'dependent',
          ownerArg: 0,
        },
      },
    },
  ],
  resources: {
    sk_font_t: {
      release: 'sk_font_delete',
      defaultLifetime: 'owned',
    },
    sk_paint_t: {
      release: 'sk_paint_delete',
      defaultLifetime: 'owned',
    },
    sk_path_t: {
      release: 'sk_path_delete',
      defaultLifetime: 'owned',
    },
    sk_surface_t: {
      release: 'sk_surface_unref',
      retain: 'sk_refcnt_safe_ref',
      defaultLifetime: 'owned',
    },
    sk_typeface_t: {
      release: 'sk_typeface_unref',
      defaultLifetime: 'owned',
    },
    sk_canvas_t: {
      release: 'sk_canvas_destroy',
      defaultLifetime: 'owned',
    },
  },
  valueStructs: {
    sk_color4f_t: {},
    sk_fontmetrics_t: {},
    sk_imageinfo_t: {},
    sk_ipoint_t: {},
    sk_irect_t: {},
    sk_isize_t: {},
    sk_matrix_t: {},
    sk_matrix44_t: {},
    sk_point3_t: {},
    sk_point_t: {},
    sk_rect_t: {},
    sk_rsxform_t: {},
    sk_size_t: {},
  },
})
