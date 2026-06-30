X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/30/1
Message-ID: <CAK3hNHbaYo2ra4mjwXwA2QeLQOk6UbTus28nnp7h5Wcrv7rOrA@mail.gmail.com>
Date: Mon, 29 Jun 2026 19:50:51 -0700
From: Abhinav Agarwal <abhinavagarwal1996@...il.com>
To: oss-security@...ts.openwall.com
Subject: hostapd: OOB write in Wi-Fi 7 MLD association parsing (pre-auth DoS)
Content-Type: text/plain; charset=utf-8

A Wi-Fi 7 / IEEE 802.11be MLD parsing issue in hostapd AP mode has
been fixed upstream:

https://w1.fi/security/2026-1/missing-ml-parsing-validation.txt

Issue:
  Missing link ID validation in hostapd_process_ml_assoc_req()
  (src/ap/ieee802_11_eht.c). link_id is masked with 0x000f
  (values 0-15), but links[] only has valid entries 0..14
  (MAX_NUM_MLD_LINKS=15). A crafted Per-STA Profile with
  link_id=15 can write past the end of links[] during association
  processing.

  This is reachable before the 4-way handshake; no credentials are
  required. An attacker within radio range can trigger it with a
  crafted association request.

Affected:
  hostapd v2.11 and newer repository snapshots before v2.12, built
  with CONFIG_IEEE80211BE and running Wi-Fi 7 / MLD AP configuration.

Impact:
  hostapd process termination / denial of service, and small memory
  corruption, per the upstream advisory.

Fix:
  https://git.w1.fi/cgit/hostap/commit/?id=46dd5a4ffc9bcf44cf8fc45120b3e1e5ec922187

  Additional related fixes are listed in the upstream advisory.

Mitigation:
  Update to hostapd v2.12 or newer once available, or apply the
  upstream fixes and rebuild.

CVE status:
  CVE assignment requested from MITRE under CAN-2026-2032030

Credit:
  The upstream advisory credits Sebastián Alba Vives, with independent
  discovery and report by Abhinav Agarwal.

Timeline:
  2026-05-14  reported to upstream
  2026-06-05  upstream published security advisory

--
Abhinav Agarwal
