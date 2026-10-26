X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/19
Message-ID: <CAARiyJqHQQ-czmrU0Vonb9yj+gR0L7OkVC5cpBPmiEpXcUPXdA@mail.gmail.com>
Date: Mon, 26 Oct 2026 21:37:25 +0100
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Godot 4.x: arbitrary code execution via .po translation file Plural-Forms header
Content-Type: text/plain; charset=utf-8

A code-execution vulnerability in Godot 4.x translation loading was
publicly disclosed on 2026-10-26 [1].

Affected versions:
Godot 4.1.0 through 4.7.2. Runtime-confirmed on the official 4.7-stable
export. No equivalent path found in 3.5.

Description:
The .po loader stores the file's Plural-Forms header without validating it
against the GNU gettext grammar (core/io/translation_loader_po.cpp:232). At
the first plural lookup the header is evaluated with the engine's general
Expression evaluator, which permits calls to registered utility functions
(core/string/plural_rules.cpp:40-46). A crafted header calls
bytes_to_var_with_objects() to deserialize a GDScript object whose
script/source property is attacker-supplied; decoding compiles the script
and runs its static initializer (modules/gdscript/gdscript.cpp:1013-1017).

Impact:
Attacker-chosen GDScript executes in the game process, with the game's
privileges, when an exported game that loads community-supplied .po
translations displays a pluralized string. Demonstrated on a stock 4.7
export in two proofs, engine-expression execution setting the global RNG
state and GDScript static-initializer execution, each 10/10 runs with clean
controls.

Reproduction:
https://github.com/bitbutter/godot-security-pocs/tree/main/2026-10-po-plural-forms-gdscript-execution
(fixtures, verifier scripts, SHA256SUMS). Narrated video:
https://youtu.be/LnNNx1F2aGo

Fix status:
Unpatched as of 2026-10-26 (master, 4.7.2, 4.7.1, 4.7). Maintainer PRs
#123130 and #123857 restrict the evaluator's function scope at this call
site; neither is merged.

CVE status:
Requested from MITRE's CNA-LR on 2026-10-26 (CAN-2026-2040826), filed after
publication. This thread will be self-replied when the record publishes.

[1]
https://axeghost.offprint.app/a/3mysixmpap723-a-community-translation-can-run-attacker-chosen-code-in-an-exported-godot-game

