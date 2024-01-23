{{- define "server.labels" }}
{{ include "common.labels.standard" . }}
app.kubernetes.io/component: server
{{- end -}}


{{- define "server.name" -}}
  {{- printf "%s" (include "common.names.fullname" .) -}}
{{- end -}}


{{- define "server.service.name" -}}
{{- if .Values.server.service.name -}}
    {{- .Values.server.service.name | trunc 63 | trimSuffix "-" }}
{{ else }}
    {{- printf "%s" (include "common.names.fullname" .) -}}
{{ end }}
{{- end }}

{{- define "server.service.name.external" -}}
{{- if .Values.server.service.name -}}
    {{- .Values.server.service.name | trunc 63 | trimSuffix "-" }}
{{ else }}
    {{- printf "%s.%s.svc.%s" (include "common.names.fullname" .) (.Release.Namespace) (.Values.clusterDomain) -}}
{{ end }}
{{- end }}

{{- define "server.ingress.webAdmin.tls.secretName" }}
{{- printf "%s" (default (include "tls.name.generate" (.Values.server.ingress.webAdmin.hostname)) (.Values.server.ingress.webAdmin.existingSecretName) ) }}
{{- end }}

{{- define "server.ingress.serverFixes.tls.secretName" }}
{{- printf "%s" (default (include "tls.name.generate" (.Values.server.ingress.serverFixes.hostname)) (.Values.server.ingress.serverFixes.existingSecretName) ) }}
{{- end }}