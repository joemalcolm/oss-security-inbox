X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/17/1
Message-ID: <aoMVr9PASwnyGqg9@ucw.cz>
Date: Mon, 17 Aug 2026 16:07:43 +0200
From: Pavel Sanda <sanda@....org>
To: oss-security@...ts.openwall.com
Subject: LyX security advisory
Content-Type: text/plain; charset=utf-8

Hello,

Multiple vulnerabilities were identified in the LyX document processor (www.lyx.org)
and associated tools from the TeXLive ecosystem (biber/xindy/xindex).

Quick Summary:
 1) If you are on a rolling-type of package distribution it is best to
   adopt newly released LyX 2.5.2, containing all hotfixes listed below.
   Although safe without it, upgrading biber to version 2.22 will avoid
   newly implemented authorization prompts.

 2) If you are on more conservative distro/channel we are offering backporting
   patchsets for older 2.5/2.4/2.3/2.2 stable series (but we are not going to
   offer new binaries except for 2.5.2). See 2.x-backport.patch files.
   Although safe without it, we suggest backporting the biber dev-branch fixes
   47ccd83 / 30c2a10 / 584a1e3 + 74252e6 into your biber (2.XX) AND relaxing the
   version check in src/LaTeX.cpp (the last two fields are the required
   major, minor version):
   -	{ "biber", false, "--version", "version:\\s*([0-9]+)\\.([0-9]+)", 2, 22 },
   +	{ "biber", false, "--version", "version:\\s*([0-9]+)\\.([0-9]+)", 2, XX },
   That will avoid newly implemented authorization prompts, which would hit large
   fraction of userbase otherwise.



In the section below there is a list of so far identified issues and their fixes.
I have exploits available upon request for distro responders if testing is
needed, but do not plan to publicly release them. I can share more detailed
notes on each issue in case someone needs it for backporting work.

I did not request any CVEs. If anyone finds it useful to assign, a single
coordinated set noted back in this thread would let everyone reference the
same identifiers.

2.5.2 tarballs are now on ftp.lyx.org. The patchsets are attached to this email;
they will also land on their git.lyx.org branches shortly.


The issues
----------
All are triggered by opening/importing/exporting a maliciously crafted LyX
document (network-deliverable: a zip, an email attachment, a shared folder).
Unless noted, the result is arbitrary command execution with the user's
privileges. No shell-escape / \write18 is required.

  Load-triggered (fire on document open/import -- worst case):
  -----------------------------------------------------------
    00a kpsewhich           a shell-metacharacter filename (e.g. a bibliography
                            database name) is concatenated into a
                            "kpsewhich <name>" shell command; also on export.
    00b lyx2lyx             filenames are spliced as a shell string into the
                            lyx2lyx converter invocation run on open.
    00c graphics-extension  a graphics inset's filename extension carries shell
                            metacharacters into an os.system() in LyX's
                            generated image-conversion script (the file must
                            exist on disk).
    00h import-path         the document's own filename reaches shipped conversion
                            helpers; the name enters on open/import and
                            fires on a later export. Fix folded into 00i.

  Export / View-PDF triggered (fire on a user export action):
  ----------------------------------------------------------
    00d bibtex_command      the document sets \bibtex_command to an arbitrary
                            program or with shell metacharacters; reaches the
                            preview pipeline (shell=True) and the export bibtex
                            call.
    00e index_command       same, for \index_command (arbitrary index processor
                            or "<" ">" redirection).
    00g mangled-filename    a hostile graphics filename's bytes survive
                            mangledFileName into re-shelling helper scripts.
    00i convert-pdf         a hostile .lyx basename with backticks hits command
                            substitution inside "..." quoting in buffer-basename
                            helpers (convert_pdf.py, ...).
    00k paperdim            raw \paperwidth / \paperheight bytes reach a parsecmd
                            ">" redirection -> arbitrary file truncate/overwrite
                            (file write, not command execution).

  Layer-2 mitigation (a new consent authorization gate for unpatched external tools):
  ----------------------------------------------------------------------------------
    00de processing gate    prompts before running a code-capable bib/index tool
                            (biber/xindy/xindex) on an untrusted document,
                            because those tools execute document-embedded code
                            even with the default command (biber sourcemap /ee,
                            xindy -M backtick, xindex CWD .lua). The real fixes
                            are upstream (biber 2.22, xindex 1.07); the gate is 
			    LyX's interim guard.
    00de-2 xindex check     xindex-only add-on (version gate + --restricted +
                            CWD jail) that stacks on the gate.
			    Scheduled for LyX 2.5.2.


Per-branch fix status (Tier 00)
=============================================

For each fixed issue, this grid shows which LyX release lines carry the fix.

Legend
------
  Y         fixed; exploit and fix manually confirmed on this line
  DiD       shipped as defence-in-depth: the fix applies and was reviewed,
            but there is no confirmed proof-of-concept on this line.
  WONTFIX   not fixed on this line (residual exposure noted below)

  Trigger:  "open"   = fires on document open / import
            "export" = fires on export or View-PDF (a user action)
            "exec"   = arbitrary command execution
            "write"  = arbitrary file write / truncate

  master    = development line (next major future release 2.6);
              Tier >=01 DiD fixes land there after the maintenance-release rollout.


  Item                         Trigger              master 2.5.2  2.5.x  2.4.x  2.3.x  2.2.x
  ---------------------------  -------------------  ------ -----  -----  -----  -----  -----
  00a kpsewhich RCE            open/export -> exec  Y      Y      Y      Y      Y      Y
  00b lyx2lyx RCE              open -> exec         Y      Y      Y      Y      Y      Y  [1]
  00c graphics-extension RCE   open -> exec         Y      Y      Y      Y      Y      Y
  00d bibtex_command RCE       open/export -> exec  Y      Y [7]  Y      Y      Y      WONTFIX [2]
  00e index_command RCE        export -> exec       Y      Y [7]  Y      Y      Y      WONTFIX [3]
  00g mangled-filename RCE     export -> exec       Y      Y      Y      Y      Y      Y
  00h import-path RCE          open/import -> exec  Y      Y      Y      Y      DiD    DiD [4] [8]
  00i convert-pdf RCE          export -> exec       Y      Y      Y      Y      Y      Y
  00k paperdim file-truncate   export -> write      Y      Y      Y      Y      Y      Y
  00de processing consent gate export -> exec       Y [5]  Y      Y      Y      Y      WONTFIX [6]
  00de-2 xindex version check  export -> exec       Y      Y      WONTFIX WONTFIX WONTFIX WONTFIX

Notes
-----
  [1] 2.2.x uses a slightly adapted form of the same fix.
  [2] 2.2.x: the bibtex_command whitelist fix is not backported. The consent
      prompt (below) that covers the underlying external-processor class is
      infeasible on 2.2.x, so that class stays open there regardless; the
      residual direct vector is a limited, attacker-constrained
      output-redirection primitive.
  [3] 2.2.x: the index_command whitelist fix is not backported; the
      index-processor export RCE remains on 2.2.x.
  [4] 2.3.x / 2.2.x: fix reviewed and applied defensively. The exact pre-2.4
      exploit does not reproduce, so it ships without a confirmed
      proof-of-concept on those lines -- but a working exploit is likely
      to exist there (cold code analysis found additional live sinks of
      the same class). Treat these lines as vulnerable, not clear.
  [5] On master (next feature release) the consent prompt will be present but OFF
      by default -- that line targets a fixed toolchain; an opt-in preference
      is retained.
  [6] 2.2.x lacks the session-trust framework the consent prompt hooks into,
      so the prompt is not feasible there.
  [7] 2.5.2 additionally carries the Windows metacharacter widen for 00d/00e. 
      The backported lines (2.5 / 2.4 / 2.3) ship the POSIX filter
      only -- we deliver no Windows binaries for those.
  [8] 00h and 00i share a single fix: hardening makeLatexName()'s allowed
      character set (00i-wide) strips the shell/cmd metacharacters at the
      source, closing both the convert-pdf (00i) and import-path (00h)
      sinks. There is therefore no separate 00h patch.

Note: the shell-escape hardening was intentionally not changed -- LyX follows
the host TeX configuration (restricted by default on all mainstream
distributions), which already refuses unconstrained \write18.


External tools (Tier EXT) - biber / xindy / xindex
==================================================

The processors behind the 00de consent gate run document-influenced code
with their default/whitelisted command. The gate is LyX's interim guard; the
real fixes are upstream, shipped through the tools' own channels. 

There won't be separate upstream announcements for the issues below. They gain
their leverage mainly from the automatic processing pipeline of LyX, which runs
these tools without user watching the details.


biber (Perl)
------------
  Issue    Biber runs document-controlled Perl on the default biblatex path,
           via three sinks: sourcemap /ee (ireplace), eval "require $package"
           and a sortfield eval. The sourcemap payload rides in the .bcf that
           biblatex writes from a \DeclareSourcemap preamble (no planted file),
           or in a CWD biber.conf biber auto-loads.
  Note     Not strictly a .lyx issue - a crafted .tex compiled through biber
           triggers it (true of xindy/xindex too).
  Fixes    Upstream was contacted and shipped fixes in biber 2.22 (all three sinks).
  Commits  github.com/plk/biber, branch dev (landed 2026-06-27..29):
             sourcemap /ee   47ccd83187  Utils.pm
             require         30c2a10fd1  Biber.pm, Constants.pm
             sortfield eval  584a1e3729 + 74252e608e  Internals.pm (both needed)
  Backport The three sink functions are byte-identical across v2.14-v2.21, so
           the commits graft onto any shipped version with only line offsets.
  LyX      2.5.2 and backports shipping the 00de gate relax the authorization
           prompts if biber >= 2.22 detected.
           If the biber fix is backported, please lower LyX's version threshold,
           see the diff in TL;DR.

xindy / texindy (Perl)
----------------------
  Issue    The -M module value is interpolated into a Perl backtick
           (`kpsewhich ... $module`) unquoted -> shell injection.
  Note     Absent from the frozen CTAN upstream; added downstream by a
           kpsewhich texmf-tree lookup. 
  TeX Live utils/xindy .../xindy.in (TLpatches/patch-01-xindy-script).
           Guarded form - only separator-free names reach the shell.
  Fixes    TL upstream was contacted and shipped the fix in TL's repo as r79990.
  LyX      no version-based relaxation, as no reliable version feedback exists.

xindex (texlua)
---------------
  Issue    xindex requires a CWD xindex-cfg.lua, executing arbitrary Lua.
           This is part of xindex's intended design, but opens a hole in
           LyX automatic processing.
  Fixes    Upstream was contacted and agreed to implement --restricted
           mode of processing (chdir-away jail on require / kpse.find_file).
           It shipped in xindex 1.07 via normal TeX Live / CTAN update.
  LyX      2.5.2 shipping the 00de gate relaxes the authorization prompts
           via 00de-2 if xindex >= 1.07 detected. 2.5/4/3 gates keep prompting.

View attachment "00a-kpsewhich.patch" of type "text/x-diff" (1736 bytes)

View attachment "00b-lyx2lyx.patch" of type "text/x-diff" (1865 bytes)

View attachment "00c-extension.patch" of type "text/x-diff" (1920 bytes)

View attachment "00d-bibtex-fix.patch" of type "text/x-diff" (2970 bytes)

View attachment "00e-index-fix.patch" of type "text/x-diff" (2455 bytes)

View attachment "00g-mangling_fix.patch" of type "text/x-diff" (3019 bytes)

View attachment "00i-wide.patch" of type "text/x-diff" (3002 bytes)

View attachment "00k-paperdim-validate.patch" of type "text/x-diff" (1351 bytes)

View attachment "00de-processing_gate.patch" of type "text/x-diff" (9919 bytes)

View attachment "00de-2-xindex-version-check.patch" of type "text/x-diff" (2988 bytes)

View attachment "2.2-backport.patch" of type "text/x-diff" (7368 bytes)

View attachment "2.3-backport.patch" of type "text/x-diff" (19780 bytes)

View attachment "2.4-backport.patch" of type "text/x-diff" (20632 bytes)

View attachment "2.5-backport.patch" of type "text/x-diff" (20711 bytes)
