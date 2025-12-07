# NeonLab Jekyll Arena Toolkit

[![Repo status](https://img.shields.io/badge/status-experimental-blue)](./)  
[![PowerShell](https://img.shields.io/badge/powershell-5.1%2B%20%7C%207.x-5391FE)](https://learn.microsoft.com/powershell/)  
[![Platform](https://img.shields.io/badge/platform-Windows-darkgreen)](./)  
[![License](https://img.shields.io/github/license/DrDzekiL/NeonLab-Jekyll-Arena-Toolkit)](./LICENSE)

A minimal but structured automation toolkit built inside the **NeonLab / Arena** system.  
Designed for analysts, system builders and automation architects who value **clarity, repeatability and clean logs**.

This toolkit forms the technical basement of the **Arena** workflow —  
where market routines, logging, scanning and auxiliary tasks converge into a single automation layer.

---

# 🔥 NeonLab Jekyll — Toolkit Documentation (v1)

`NeonLab Jekyll` is a lightweight automation tool for scanning selected crypto assets and producing structured logs and reports.  
It is intended to be the “morning engine” of the Arena workflow — a single command that produces an up-to-date market snapshot.

In simple terms:  
> **One command → fresh market scan → clear output.**

---

## 🚀 Features

- Scan multiple assets (BTC, BNB, ASTER, etc.)
- Config-driven workflow via JSON
- Clean timestamped logs
- Single entry point (`Run-Jekyll.ps1`)
- Modular code in `src/`
- Lightweight, portable, no external dependencies

---

## 🧩 Requirements

- **Windows 10 / 11**
- **PowerShell 5.1+** or **PowerShell 7 (pwsh)**
- Internet connection
- Recommended installation path:

```text
C:\NeonLab\NeonLab-Jekyll-Arena-Toolkit\
---

## 🧱 What this toolkit solves

- Replaces manual “morning scan” with a single repeatable command.
- Keeps a clean, timestamped log of what was scanned and when.
- Serves as a minimal, transparent codebase for building custom Arena automation.

---

## ⚠️ Limitations / Scope

- This toolkit does **not** place trades or connect to exchanges directly.
- No GUI — everything runs in the PowerShell terminal.
- Current default focus is a small asset set (BTC, BNB, ASTER); you extend it via config.

---

## 🗺 Roadmap (short)

- Configurable output directory with CSV / JSON exports.
- Basic per-asset metrics (ranges, volatility flags, simple signals).
- Optional preset configs for different scan profiles (morning / training / custom).
