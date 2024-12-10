{{/*
Expand the name of the chart.
*/}}
{{- define "jellyfin.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "jellyfin.labels" -}}
app.kubernetes.io/name: {{ include "jellyfin.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "jellyfin.selectorLabels" -}}
app.kubernetes.io/name: {{ include "jellyfin.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
