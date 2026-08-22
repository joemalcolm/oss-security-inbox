X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/22/4
Message-ID: <178739945444.2148913.12394368547364455432@notcve.org>
Date: Sat, 22 Aug 2026 13:50:54 +0200
From: advisories@...cve.org
To: oss-security@...ts.openwall.com
Subject: [NotCVE-2026-0013] CHIRP Kenwood ITM Driver Eval Injection Allows Arbitrary Code Execution via Crafted Radio File
Content-Type: text/plain; charset=utf-8

----------------------------------------------------------------------------
NotCVE Advisory — NotCVE-2026-0013
----------------------------------------------------------------------------

[-] Summary:
Eval injection in the Kenwood ITM file format driver of CHIRP, an
open-source application for programming amateur radios, allows an attacker
who can persuade a user to open a crafted radio file to execute arbitrary
Python code with the privileges of that user. The affected path is reached
through the ordinary File -> Open flow in a stock installation; no dialog or
confirmation precedes execution. CVSS:3.1 7.8
(AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H).

[-] Affected:
CHIRP, chirp-next builds up to and including chirp-next-20260814.
Fixed in source at commit 39178db (2026-08-17); the researcher reports build
chirp-next-20260821 ships the fix.

[-] Technical Description:
ITMRadio._clean_tmode() in chirp/drivers/kenwood_itm.py read two CSV fields
from the file being opened and passed each one directly to Python's built-in
eval() (lines 66-67):

  TXSIG, whose evaluated result was assigned to mem.rtone
  RXSIG, whose evaluated result was assigned to mem.ctone

Both values are attacker-controlled strings retrieved verbatim from a row of
the opened file via generic_csv.get_datum_by_header(). The driver expected a
numeric CTCSS tone, but no type check, allowlist, or parsing step
constrained the input, so any Python expression placed in either field was
evaluated at file-load time. The commit message for the fix records the
assumption plainly: the squelch fields "were assumed to only be a float".

ITMRadio is decorated with @directory.register and declares VENDOR =
"Kenwood", MODEL = "ITM" and FILE_EXTENSION = "itm". The driver ships in the
stock distribution; no non-standard setting, plugin, or developer mode is
required.

The .itm extension is not offered by the Open dialog's default filter, so
that variant requires the victim to switch the filter to "All Files". The
researcher's second proof of concept carries the same CSV payload in a .img
file with a trailing CHIRP metadata blob naming vendor "Kenwood" and model
"ITM"; directory.get_radio_by_image() selects a driver by comparing that
embedded metadata against registered classes, which is consistent with a
.img file routing to this driver under the default filter.

The code runs in the CHIRP process with the victim user's privileges, before
any channel data is displayed. No elevation is involved; the impact is
bounded by what that user can reach.

The fix removes both eval() calls and replaces them with
kenwood_tone.parse_qtdqt() feeding chirp_common.split_tone_decode().

Weaknesses:
CWE-95: Improper Neutralization of Directives in Dynamically Evaluated Code
        ('Eval Injection')
CAPEC-35: Leverage Executable Code in Non-Executable Files
CAPEC-242: Code Injection

Proof-of-concept files for both delivery variants are published in the
researcher's repository (see References).

[-] Timeline:
[17/08/2026] - Reported to the CHIRP maintainer; fixed the same day
               (39178db).
[21/08/2026] - Build chirp-next-20260821 reported to ship the fix.
[21/08/2026] - No CVE assigned; NotCVE ID reserved instead.
[22/08/2026] - Published as NotCVE-2026-0013.

[-] Credit:
Discovered by Christopher Duram
(https://www.linkedin.com/in/christopherduram/).

[-] Full Details and Updates:
https://notcve.org/notcve/NotCVE-2026-0013

[-] References:
https://github.com/cduram/CHIRP-CodeExecution_via_Malicious_ImageFile
https://github.com/kk7ds/chirp/commit/39178dbfc4fece083ab9ed20286d6ae3a91a718e
https://github.com/kk7ds/chirp/blob/39178dbfc4fece083ab9ed20286d6ae3a91a718e~1/chirp/drivers/kenwood_itm.py
https://github.com/kk7ds/chirp/blob/master/chirp/drivers/kenwood_itm.py
https://github.com/kk7ds/chirp/blob/master/chirp/directory.py

[-] About NotCVE:
NotCVE (https://notcve.org) assigns public, timestamped NotCVE IDs to
vulnerabilities not acknowledged by vendors. Vendor will not assign a CVE?
Request a NotCVE: https://notcve.org/form/ · Contributors:
https://notcve.org/hall/
