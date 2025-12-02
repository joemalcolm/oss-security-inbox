Received: (qmail 23963 invoked by uid 550); 2 Dec 2025 21:57:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23911 invoked from network); 2 Dec 2025 21:57:37 -0000
Date: Tue, 2 Dec 2025 22:57:01 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aS9grXZWbWRuAoBk@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] A Windows uncontrolled search path vulnerability
 affects Vim < 9.1.1947

A Windows uncontrolled search path vulnerability affects Vim < 9.1.1947
======================================================================
Date: 02.12.2025
Severity: High
CVE: CVE-2025-66476
CWE: Uncontrolled Search Path Element (CWE-427)

## Summary
An uncontrolled search path vulnerability on Windows allows Vim to 
execute malicious executables placed in the current working directory 
for the current edited file. The issue affects Vim for Windows **prior 
to version 9.1.1947**.

## Description
On Windows, when using `cmd.exe` as a shell, Vim resolves external 
commands by searching the current working directory before system paths. 
When Vim invokes tools such as `findstr` for `:grep`, external commands 
or filters via `:!`, or compiler/`:make` commands, it may inadvertently 
run a malicious executable present in the same directory as the file 
being edited.

This enables an attacker to plant a trojanized executable with a 
commonly used name (e.g. `findstr.exe`) inside a project folder and have 
Vim execute it instead of the intended system binary, if the user 
changes into that directory using any of `:cd`, `:lcd` or `:tcd` command 
or when Vim changes the directory to the directory of the file being 
edited (e.g. when opening a file via Windows Explorer).

## Impact
Executing a malicious binary in this way allows arbitrary code execution 
with the privileges of the user running Vim, without requiring elevated 
permissions.

The vulnerability can be triggered as soon as the user performs an 
action that triggers execution of an external command, including:

- `:grep` using Windows `findstr.exe`
- executing external commands using `:!`
- filter commands using `!`
- `:make` and related build-tool integrations
- other features invoking external utilities like `system()` Vim script
  function

Because arbitrary code execution is possible without requiring elevated
privileges and may occur simply by opening a file in a malicious
directory the severity is rated **high**.

This issue affects Vim for Windows version 9.1.1946 and earlier and
is fixed in Vim **v9.1.1947**.

## Acknowledgements
The Vim project would like to thank Simon Zuckerbraun of Trend Micro’s
Zero Day Initiative (ZDI) (ZDI-CAN-28569) for reporting this 
vulnerability.

References:
https://github.com/vim/vim/commit/083ec6d9a3b7b09006e0ce69ac802597d25
https://github.com/vim/vim/security/advisories/GHSA-g77q-xrww-p834

Thanks,
Chris
-- 
Hallo Wäsche-Vorwärmer!
