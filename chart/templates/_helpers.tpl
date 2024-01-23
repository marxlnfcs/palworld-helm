{{- define "boolToString" }}
{{- if . }}
{{- printf "%s" ("true") }}
{{- else }}
{{- printf "%s" ("false") }}
{{- end }}
{{- end }}