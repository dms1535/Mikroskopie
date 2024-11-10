---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
description: "{{ .Name | humanize | title }}"
summary: "{{ .Name | humanize | title }}"
type = "chapter"
weight = 1

#categories
categories:

#tags
tags:


---

This is a new chapter.