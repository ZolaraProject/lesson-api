{{- define "lessonapi.name" -}}
{{- default "lesson-api" .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Helm required labels */}}
{{- define "lessonapi.labels" -}}
heritage: {{ .Release.Service }}
release: {{ .Release.Name }}
chart: {{ .Chart.Name }}
app: "{{ template "lessonapi.name" . }}"
{{- end -}}

{{/* matchLabels */}}
{{- define "lessonapi.matchLabels" -}}
release: {{ .Release.Name }}
app: "{{ template "lessonapi.name" . }}"
{{- end -}}