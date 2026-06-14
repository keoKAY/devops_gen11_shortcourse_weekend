{{- define "selector-tpl" }}
  selector:
    matchLabels:
      app: {{ .Values.appName.app }}
  template:
    metadata:
      labels:
        app: {{ .Values.appName.app }}
{{- end }}