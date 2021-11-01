X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["40874" "Monday" "1" "November" "2021" "01:01:46" "+0100" "Pietro Albini" "pietro@pietroalbini.org" nil "905" "[oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code" nil nil nil "11" nil nil (number mark "U       pietro@pietr Nov  1  905/40874 " thread-indent "\"[oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9619 invoked by uid 550); 1 Nov 2021 06:12:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26380 invoked from network); 1 Nov 2021 00:02:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	pietroalbini.org; h=to:from:subject:message-id:date:mime-version
	:content-type; s=fm3; bh=MoTXKjBK9NCtjvGIdgDQ6bvrtbkld3imCN1azL0
	aMHk=; b=ghuC6yyungvS33gMcJIMYwy2MbCmirkrY29BrOhfzofI594kJyE+Rgm
	UpRfnHG2zJcYsGyNLapywwakbZBttBo9rQrTnh4S4VSCBBws6/5mJ591uxl9vHND
	+hhOxoukLgaqsRQHPacgvyV2SucxGtUYb9+0uOyKkwTMnKYQxBOgd8x9Eo5qFzSD
	tDOY+e+74tXWW0Rk2FqcWKFh694o74QbW2a74fU/1Sxe9Y9PabmYVLnJZ6srZr2T
	2s+1c1yZMof1fhsuEfPOXZTXmC0CSr9S7a3AWF9m7U6a/JG1wIo0I0T9+2Cv4eW5
	Nn/z5VPwcge+RQ3qmBKV3B1WzFka02w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=MoTXKjBK9NCtjvGIdgDQ6bvrtbkld
	3imCN1azL0aMHk=; b=OU//17jdBHaSl4Gn4WMIwVbIyWeg1sVlWOMRTokle+cZV
	L1+hNmt/UvTemK+kYHeKcsWus3QgeuE2c7e6FvVVUooEx/vlb2Y+wo4ehMxGnx/Q
	I8XssbsnrZDZXOgYNdy86bDJ7Uugxy5xx8sOleMrLJFdRe1wBkLCdvM+2SwbKVbV
	C1EcTJ18W7C3T3D4/mEJbeFRR9yz3gUBSgOXRTx3wGJ5fZshbea4r3b5msiHQCTW
	I1rNEnKiYTDwr27q+m8TXdi3u1xJh7wnnIXZ8DvxVhah+1bd8vzJY7gPbS1rge5P
	95B6+kE0TdoH0uguE/Dtz1BwFHdeGB9V11LUVklhw==
X-ME-Sender: <xms:ay5_YT89D-WuIe4yezPwAx-yCp-cwKsG9U9lj2nEiz3a5wqutnW8pQ>
    <xme:ay5_YfvJjZhuzCQ8ByUvhZKdtSXaKepdlzJkelXvc2TUy4GKS_ZD7G2KhKBVFEWdD
    iEvkbvT2iRHvCW1oyY>
X-ME-Received: <xmr:ay5_YRDamiyX3nlBMVr9YFJJ6AW1tiYHmgQ2litzkQLWG0eTKEIjlPpwWnt-PaA_61Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdehuddgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefvhffukffffgggtgesmhdtreertd
    efjeenucfhrhhomheprfhivghtrhhoucetlhgsihhnihcuoehpihgvthhrohesphhivght
    rhhorghlsghinhhirdhorhhgqeenucggtffrrghtthgvrhhnpeegjeefledtjefhudffvd
    duuefhgfffvdffffehleeuhfdvteeljefhvdetgfduhfenucffohhmrghinhepghhithhh
    uhgsrdgtohhmpdgtrghmrdgrtgdruhhkpdhruhhsthdqlhgrnhhgrdhorhhgnecuvehluh
    hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphhivghtrhhosehp
    ihgvthhrohgrlhgsihhnihdrohhrgh
X-ME-Proxy: <xmx:ay5_YfekfElcb_W5VKFV3-iztVzyD6_nDXc4s3swk6d2BW4EBy9cTA>
    <xmx:ay5_YYPrP8ijBJ28qgR9huml0FkKy6UC6w92umM7ouJvsUHkxU94rA>
    <xmx:ay5_YRmVeei7eDjapcXR0GtxEclvjEXR9NK6RozjLtHLkVPNjSQkgA>
    <xmx:bC5_YTYhxUB7fQs375QYPrUdUq-PHlZ22HYjw_BAUBYHhU4WhpfPIA>
To: oss-security@lists.openwall.com
From: Pietro Albini <pietro@pietroalbini.org>
Message-ID: <aa5e1a0e-daba-41f2-1f98-91d36584f119@pietroalbini.org>
Date: Mon, 1 Nov 2021 01:01:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------42AA029C457D6BBA7DCDE10F"
Content-Language: en-US
Subject: [oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in
 source code

--------------42AA029C457D6BBA7DCDE10F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

The Rust Security Response WG was notified of a security concern affecting
source code containing "bidirectional override" Unicode codepoints: in some
cases the use of those codepoints could lead to the reviewed code being
different than the compiled code.

This is a vulnerability in the Unicode specification, and its assigned
identifier is CVE-2021-42574. While the vulnerability itself is not a rustc
flaw, we're taking proactive measures to mitigate its impact on Rust
developers.

## Overview

Unicode has support for both left-to-right and right-to-left languages, and to
aid writing left-to-right words inside a right-to-left sentence (or vice versa)
it also features invisible codepoints called "bidirectional override".

These codepoints are normally used across the Internet to embed a word inside a
sentence of another language (with a different text direction), but it was
reported to us that they could be used to manipulate how source code is
displayed in some editors and code review tools, leading to the reviewed code
being different than the compiled code. This is especially bad if the whole
team relies on bidirectional-aware tooling.

As an example, the following snippet (with `{U+NNNN}` replaced with the Unicode
codepoint `NNNN`):

```rust
if access_level != "user{U+202E} {U+2066}// Check if admin{U+2069} {U+2066}" {
```

...would be rendered by bidirectional-aware tools as:

```rust
if access_level != "user" { // Check if admin
```

## Affected Versions

Rust 1.56.1 introduces two new lints to detect and reject code containing the
affected codepoints. Rust 1.0.0 through Rust 1.56.0 do not include such lints,
leaving your source code vulnerable to this attack if you do not perform
out-of-band checks for the presence of those codepoints.

To assess the security of the ecosystem we analyzed all crate versions ever
published on crates.io (as of 2021-10-17), and only 5 crates have the affected
codepoints in their source code, with none of the occurrences being malicious.

## Mitigations

We will be releasing Rust 1.56.1 today, 2021-11-01, with two new
deny-by-default lints detecting the affected codepoints, respectively in string
literals and in comments. The lints will prevent source code files containing
those codepoints from being compiled, protecting you from the attack.

If your code has legitimate uses for the codepoints we recommend replacing them
with the related escape sequence. The error messages will suggest the right
escapes to use.

If you can't upgrade your compiler version, or your codebase also includes
non-Rust source code files, we recommend periodically checking that the
following codepoints are not present in your repository and your dependencies:
U+202A, U+202B, U+202C, U+202D, U+202E, U+2066, U+2067, U+2068, U+2069.

## Timeline of events

* 2021-07-25: we received the report and started working on a fix.
* 2021-09-14: the date for the embargo lift (2021-11-01) is communicated to us.
* 2021-10-17: performed an analysis of all the source code ever published to
   crates.io to check for the presence of this attack.
* 2021-11-01: embargo lifts, the vulnerability is disclosed and Rust 1.56.1 is
   released.

## Acknowledgments

Thanks to Nicholas Boucher [1] and Ross Anderson [2] from the University of
Cambridge for disclosing this to us according to our security policy [3]!

We also want to thank the members of the Rust project who contributed to the
mitigations for this issue. Thanks to Esteban Küber for developing the lints,
Pietro Albini for leading the security response, and many others for their
involvement, insights and feedback: Josh Stone, Josh Triplett, Manish
Goregaokar, Mara Bos, Mark Rousskov, Niko Matsakis, and Steve Klabnik.

## Appendix: Homoglyph attacks

As part of their research, Nicholas Boucher and Ross Anderson also uncovered a
similar security issue identified as CVE-2021-42694 involving homoglyphs inside
identifiers. Rust already includes mitigations for that attack since Rust
1.53.0. Rust 1.0.0 through Rust 1.52.1 is not affected due to the lack of
support for non-ASCII identifiers in those releases.

[1] https://github.com/nickboucher
[2] https://www.cl.cam.ac.uk/~rja14
[3] https://www.rust-lang.org/policies/security
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEV2nIi/XdPRSiNKes77mGCudSDawFAmF+hJkACgkQ77mGCudS
DaxljBAAtBlcz3g8h8lZvzOfOb8zRNfgw7mvBxr1fNyjNkV6n/xJA5yO6DC7K5ra
qqHXVdn7yfN5PvCBB7+vqQMDbM3X+m0Ui1eSIW09hGuyqBEc2+3UXlcWe0RVFBjT
ZiGb0TvHqaCZT9z+fRWtkbUia/vnZfTfJkQ0Xj4SE325I0k3uimBpJ+jZFLl98kR
1fnQtDkPQHK+VG5PdlYrZiGB+CibwlJWSqi7qyedPE7BVyFxSn2fHuFmQ4rUpBQc
fAMWI83B+HuQ650vJY2mGCq2qedsTaUDK9S9oF+7pl7FtSjlsBdmJ9ikGB1FFlVP
/6l0DZBRx2o3dp0KlD7k/MsXWZdo2Wg3wRamCltA/9f+uZBxLsdwJ+z1mvZB+wah
jDkrDMOXdacZA5Yr69swY5UnTDyM5oZixT6LQTDCTQTBGMOLFsWTc3kNk7v4r+vj
CR6pVj/2+jqy3hI/IrAWm129KVpyp8XM4KQbMenOBN32eBbDOtIZBn7cjqizfamU
mP5dvUaIfUzOkHcr1Bcx5WJSSTgON8pVTb6AsreCY7rSG2fiHT2beb6W5yZFhdm2
vWefxdcsL/h5WF0NHO5Hgj5o5a29sCpKOuSLfyW6GsA8waSRPkZBs2YWyzidhFr3
A9hmwxWAyDQv8NZZcThepdMjFT8zoDq6cb/aDX28OOjIfJAFQWQ=
=IsMc
-----END PGP SIGNATURE-----

--------------42AA029C457D6BBA7DCDE10F
Content-Type: text/x-patch; charset=UTF-8;
 name="rust-1.56.0-fix.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="rust-1.56.0-fix.patch"

>From fda0eaccfdfedeaa5efdff9f6dc679e6ec27b962 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?Esteban=20K=C3=BCber?= <esteban@kuber.com.ar>
Date: Thu, 19 Aug 2021 11:40:00 -0700
Subject: [PATCH] Lint against RTL unicode codepoints in literals and comments

Address CVE-2021-42574.
---
 Cargo.lock                                    |   1 +
 compiler/rustc_errors/src/emitter.rs          |  20 +-
 compiler/rustc_lint/src/context.rs            |  39 +++-
 .../src/hidden_unicode_codepoints.rs          | 161 +++++++++++++++
 compiler/rustc_lint/src/lib.rs                |   3 +
 compiler/rustc_lint_defs/src/builtin.rs       |  28 +++
 compiler/rustc_lint_defs/src/lib.rs           |   1 +
 compiler/rustc_parse/Cargo.toml               |   1 +
 compiler/rustc_parse/src/lexer/mod.rs         |  40 +++-
 .../src/lexer/unescape_error_reporting.rs     |  20 +-
 .../ui/parser/unicode-control-codepoints.rs   |  39 ++++
 .../parser/unicode-control-codepoints.stderr  | 192 ++++++++++++++++++
 12 files changed, 535 insertions(+), 10 deletions(-)
 create mode 100644 compiler/rustc_lint/src/hidden_unicode_codepoints.rs
 create mode 100644 src/test/ui/parser/unicode-control-codepoints.rs
 create mode 100644 src/test/ui/parser/unicode-control-codepoints.stderr

diff --git a/Cargo.lock b/Cargo.lock
index 4f1a5ca35fa..f7080a91020 100644
--- a/Cargo.lock
+++ b/Cargo.lock
@@ -4101,6 +4101,7 @@ dependencies = [
  "rustc_span",
  "tracing",
  "unicode-normalization",
+ "unicode-width",
 ]
 
 [[package]]
diff --git a/compiler/rustc_errors/src/emitter.rs b/compiler/rustc_errors/src/emitter.rs
index 29f352ae585..272e367dd38 100644
--- a/compiler/rustc_errors/src/emitter.rs
+++ b/compiler/rustc_errors/src/emitter.rs
@@ -2054,8 +2054,26 @@ fn num_decimal_digits(num: usize) -> usize {
     MAX_DIGITS
 }
 
+// We replace some characters so the CLI output is always consistent and underlines aligned.
+const OUTPUT_REPLACEMENTS: &[(char, &str)] = &[
+    ('\t', "    "),   // We do our own tab replacement
+    ('\u{202A}', ""), // The following unicode text flow control characters are inconsistently
+    ('\u{202B}', ""), // supported accross CLIs and can cause confusion due to the bytes on disk
+    ('\u{202D}', ""), // not corresponding to the visible source code, so we replace them always.
+    ('\u{202E}', ""),
+    ('\u{2066}', ""),
+    ('\u{2067}', ""),
+    ('\u{2068}', ""),
+    ('\u{202C}', ""),
+    ('\u{2069}', ""),
+];
+
 fn replace_tabs(str: &str) -> String {
-    str.replace('\t', "    ")
+    let mut s = str.to_string();
+    for (c, replacement) in OUTPUT_REPLACEMENTS {
+        s = s.replace(*c, replacement);
+    }
+    s
 }
 
 fn draw_col_separator(buffer: &mut StyledBuffer, line: usize, col: usize) {
diff --git a/compiler/rustc_lint/src/context.rs b/compiler/rustc_lint/src/context.rs
index 7dbc3d60439..30ae664917d 100644
--- a/compiler/rustc_lint/src/context.rs
+++ b/compiler/rustc_lint/src/context.rs
@@ -16,6 +16,7 @@
 
 use self::TargetLint::*;
 
+use crate::hidden_unicode_codepoints::UNICODE_TEXT_FLOW_CHARS;
 use crate::levels::{is_known_lint_tool, LintLevelsBuilder};
 use crate::passes::{EarlyLintPassObject, LateLintPassObject};
 use rustc_ast as ast;
@@ -40,7 +41,7 @@ use rustc_session::lint::{FutureIncompatibleInfo, Level, Lint, LintBuffer, LintI
 use rustc_session::Session;
 use rustc_session::SessionLintStore;
 use rustc_span::lev_distance::find_best_match_for_name;
-use rustc_span::{symbol::Symbol, MultiSpan, Span, DUMMY_SP};
+use rustc_span::{symbol::Symbol, BytePos, MultiSpan, Span, DUMMY_SP};
 use rustc_target::abi::{self, LayoutOf};
 use tracing::debug;
 
@@ -612,6 +613,42 @@ pub trait LintContext: Sized {
             // Now, set up surrounding context.
             let sess = self.sess();
             match diagnostic {
+                BuiltinLintDiagnostics::UnicodeTextFlow(span, content) => {
+                    let spans: Vec<_> = content
+                        .char_indices()
+                        .filter_map(|(i, c)| {
+                            UNICODE_TEXT_FLOW_CHARS.contains(&c).then(|| {
+                                let lo = span.lo() + BytePos(2 + i as u32);
+                                (c, span.with_lo(lo).with_hi(lo + BytePos(c.len_utf8() as u32)))
+                            })
+                        })
+                        .collect();
+                    let (an, s) = match spans.len() {
+                        1 => ("an ", ""),
+                        _ => ("", "s"),
+                    };
+                    db.span_label(span, &format!(
+                        "this comment contains {}invisible unicode text flow control codepoint{}",
+                        an,
+                        s,
+                    ));
+                    for (c, span) in &spans {
+                        db.span_label(*span, format!("{:?}", c));
+                    }
+                    db.note(
+                        "these kind of unicode codepoints change the way text flows on \
+                         applications that support them, but can cause confusion because they \
+                         change the order of characters on the screen",
+                    );
+                    if !spans.is_empty() {
+                        db.multipart_suggestion_with_style(
+                            "if their presence wasn't intentional, you can remove them",
+                            spans.into_iter().map(|(_, span)| (span, "".to_string())).collect(),
+                            Applicability::MachineApplicable,
+                            SuggestionStyle::HideCodeAlways,
+                        );
+                    }
+                },
                 BuiltinLintDiagnostics::Normal => (),
                 BuiltinLintDiagnostics::BareTraitObject(span, is_global) => {
                     let (sugg, app) = match sess.source_map().span_to_snippet(span) {
diff --git a/compiler/rustc_lint/src/hidden_unicode_codepoints.rs b/compiler/rustc_lint/src/hidden_unicode_codepoints.rs
new file mode 100644
index 00000000000..1bcdcb806fc
--- /dev/null
+++ b/compiler/rustc_lint/src/hidden_unicode_codepoints.rs
@@ -0,0 +1,161 @@
+use crate::{EarlyContext, EarlyLintPass, LintContext};
+use rustc_ast as ast;
+use rustc_errors::{Applicability, SuggestionStyle};
+use rustc_span::{BytePos, Span, Symbol};
+
+declare_lint! {
+    /// The `text_direction_codepoint_in_literal` lint detects Unicode codepoints that change the
+    /// visual representation of text on screen in a way that does not correspond to their on
+    /// memory representation.
+    ///
+    /// ### Explanation
+    ///
+    /// The unicode characters `\u{202A}`, `\u{202B}`, `\u{202D}`, `\u{202E}`, `\u{2066}`,
+    /// `\u{2067}`, `\u{2068}`, `\u{202C}` and `\u{2069}` make the flow of text on screen change
+    /// its direction on software that supports these codepoints. This makes the text "abc" display
+    /// as "cba" on screen. By leveraging software that supports these, people can write specially
+    /// crafted literals that make the surrounding code seem like it's performing one action, when
+    /// in reality it is performing another. Because of this, we proactively lint against their
+    /// presence to avoid surprises.
+    ///
+    /// ### Example
+    ///
+    /// ```rust,compile_fail
+    /// #![deny(text_direction_codepoint_in_literal)]
+    /// fn main() {
+    ///     println!("{:?}", '‮');
+    /// }
+    /// ```
+    ///
+    /// {{produces}}
+    ///
+    pub TEXT_DIRECTION_CODEPOINT_IN_LITERAL,
+    Deny,
+    "detect special Unicode codepoints that affect the visual representation of text on screen, \
+     changing the direction in which text flows",
+}
+
+declare_lint_pass!(HiddenUnicodeCodepoints => [TEXT_DIRECTION_CODEPOINT_IN_LITERAL]);
+
+crate const UNICODE_TEXT_FLOW_CHARS: &[char] = &[
+    '\u{202A}', '\u{202B}', '\u{202D}', '\u{202E}', '\u{2066}', '\u{2067}', '\u{2068}', '\u{202C}',
+    '\u{2069}',
+];
+
+impl HiddenUnicodeCodepoints {
+    fn lint_text_direction_codepoint(
+        &self,
+        cx: &EarlyContext<'_>,
+        text: Symbol,
+        span: Span,
+        padding: u32,
+        point_at_inner_spans: bool,
+        label: &str,
+    ) {
+        // Obtain the `Span`s for each of the forbidden chars.
+        let spans: Vec<_> = text
+            .as_str()
+            .char_indices()
+            .filter_map(|(i, c)| {
+                UNICODE_TEXT_FLOW_CHARS.contains(&c).then(|| {
+                    let lo = span.lo() + BytePos(i as u32 + padding);
+                    (c, span.with_lo(lo).with_hi(lo + BytePos(c.len_utf8() as u32)))
+                })
+            })
+            .collect();
+
+        cx.struct_span_lint(TEXT_DIRECTION_CODEPOINT_IN_LITERAL, span, |lint| {
+            let mut err = lint.build(&format!(
+                "unicode codepoint changing visible direction of text present in {}",
+                label
+            ));
+            let (an, s) = match spans.len() {
+                1 => ("an ", ""),
+                _ => ("", "s"),
+            };
+            err.span_label(
+                span,
+                &format!(
+                    "this {} contains {}invisible unicode text flow control codepoint{}",
+                    label, an, s,
+                ),
+            );
+            if point_at_inner_spans {
+                for (c, span) in &spans {
+                    err.span_label(*span, format!("{:?}", c));
+                }
+            }
+            err.note(
+                "these kind of unicode codepoints change the way text flows on applications that \
+                 support them, but can cause confusion because they change the order of \
+                 characters on the screen",
+            );
+            if point_at_inner_spans && !spans.is_empty() {
+                err.multipart_suggestion_with_style(
+                    "if their presence wasn't intentional, you can remove them",
+                    spans.iter().map(|(_, span)| (*span, "".to_string())).collect(),
+                    Applicability::MachineApplicable,
+                    SuggestionStyle::HideCodeAlways,
+                );
+                err.multipart_suggestion(
+                    "if you want to keep them but make them visible in your source code, you can \
+                    escape them",
+                    spans
+                        .into_iter()
+                        .map(|(c, span)| {
+                            let c = format!("{:?}", c);
+                            (span, c[1..c.len() - 1].to_string())
+                        })
+                        .collect(),
+                    Applicability::MachineApplicable,
+                );
+            } else {
+                // FIXME: in other suggestions we've reversed the inner spans of doc comments. We
+                // should do the same here to provide the same good suggestions as we do for
+                // literals above.
+                err.note("if their presence wasn't intentional, you can remove them");
+                err.note(&format!(
+                    "if you want to keep them but make them visible in your source code, you can \
+                     escape them: {}",
+                    spans
+                        .into_iter()
+                        .map(|(c, _)| { format!("{:?}", c) })
+                        .collect::<Vec<String>>()
+                        .join(", "),
+                ));
+            }
+            err.emit();
+        });
+    }
+}
+impl EarlyLintPass for HiddenUnicodeCodepoints {
+    fn check_attribute(&mut self, cx: &EarlyContext<'_>, attr: &ast::Attribute) {
+        if let ast::AttrKind::DocComment(_, comment) = attr.kind {
+            if comment.as_str().contains(UNICODE_TEXT_FLOW_CHARS) {
+                self.lint_text_direction_codepoint(cx, comment, attr.span, 0, false, "doc comment");
+            }
+        }
+    }
+
+    fn check_expr(&mut self, cx: &EarlyContext<'_>, expr: &ast::Expr) {
+        // byte strings are already handled well enough by `EscapeError::NonAsciiCharInByteString`
+        let (text, span, padding) = match &expr.kind {
+            ast::ExprKind::Lit(ast::Lit { token, kind, span }) => {
+                let text = token.symbol;
+                if !text.as_str().contains(UNICODE_TEXT_FLOW_CHARS) {
+                    return;
+                }
+                let padding = match kind {
+                    // account for `"` or `'`
+                    ast::LitKind::Str(_, ast::StrStyle::Cooked) | ast::LitKind::Char(_) => 1,
+                    // account for `r###"`
+                    ast::LitKind::Str(_, ast::StrStyle::Raw(val)) => *val as u32 + 2,
+                    _ => return,
+                };
+                (text, span, padding)
+            }
+            _ => return,
+        };
+        self.lint_text_direction_codepoint(cx, text, *span, padding, true, "literal");
+    }
+}
diff --git a/compiler/rustc_lint/src/lib.rs b/compiler/rustc_lint/src/lib.rs
index ef4bda666ba..b65fa419fad 100644
--- a/compiler/rustc_lint/src/lib.rs
+++ b/compiler/rustc_lint/src/lib.rs
@@ -48,6 +48,7 @@ mod array_into_iter;
 pub mod builtin;
 mod context;
 mod early;
+pub mod hidden_unicode_codepoints;
 mod internal;
 mod late;
 mod levels;
@@ -77,6 +78,7 @@ use rustc_span::Span;
 
 use array_into_iter::ArrayIntoIter;
 use builtin::*;
+use hidden_unicode_codepoints::*;
 use internal::*;
 use methods::*;
 use non_ascii_idents::*;
@@ -128,6 +130,7 @@ macro_rules! early_lint_passes {
                 DeprecatedAttr: DeprecatedAttr::new(),
                 WhileTrue: WhileTrue,
                 NonAsciiIdents: NonAsciiIdents,
+                HiddenUnicodeCodepoints: HiddenUnicodeCodepoints,
                 IncompleteFeatures: IncompleteFeatures,
                 RedundantSemicolons: RedundantSemicolons,
                 UnusedDocComment: UnusedDocComment,
diff --git a/compiler/rustc_lint_defs/src/builtin.rs b/compiler/rustc_lint_defs/src/builtin.rs
index 8fb678e2d20..e9cd30a058f 100644
--- a/compiler/rustc_lint_defs/src/builtin.rs
+++ b/compiler/rustc_lint_defs/src/builtin.rs
@@ -3416,3 +3416,31 @@ declare_lint! {
     Warn,
     "`break` expression with label and unlabeled loop as value expression"
 }
+
+declare_lint! {
+    /// The `text_direction_codepoint_in_comment` lint detects Unicode codepoints in comments that
+    /// change the visual representation of text on screen in a way that does not correspond to
+    /// their on memory representation.
+    ///
+    /// ### Example
+    ///
+    /// ```rust,compile_fail
+    /// #![deny(text_direction_codepoint_in_comment)]
+    /// fn main() {
+    ///     println!("{:?}"); // '‮');
+    /// }
+    /// ```
+    ///
+    /// {{produces}}
+    ///
+    /// ### Explanation
+    ///
+    /// Unicode allows changing the visual flow of text on screen in order to support scripts that
+    /// are written right-to-left, but a specially crafted comment can make code that will be
+    /// compiled appear to be part of a comment, depending on the software used to read the code.
+    /// To avoid potential problems or confusion, such as in CVE-2021-42574, by default we deny
+    /// their use.
+    pub TEXT_DIRECTION_CODEPOINT_IN_COMMENT,
+    Deny,
+    "invisible directionality-changing codepoints in comment"
+}
diff --git a/compiler/rustc_lint_defs/src/lib.rs b/compiler/rustc_lint_defs/src/lib.rs
index f89d531b5ef..feac2a7cfa4 100644
--- a/compiler/rustc_lint_defs/src/lib.rs
+++ b/compiler/rustc_lint_defs/src/lib.rs
@@ -306,6 +306,7 @@ pub enum BuiltinLintDiagnostics {
     TrailingMacro(bool, Ident),
     BreakWithLabelAndLoop(Span),
     NamedAsmLabel(String),
+    UnicodeTextFlow(Span, String),
 }
 
 /// Lints that are buffered up early on in the `Session` before the
diff --git a/compiler/rustc_parse/Cargo.toml b/compiler/rustc_parse/Cargo.toml
index 1ca1a92252e..b67195e6e22 100644
--- a/compiler/rustc_parse/Cargo.toml
+++ b/compiler/rustc_parse/Cargo.toml
@@ -18,3 +18,4 @@ rustc_session = { path = "../rustc_session" }
 rustc_span = { path = "../rustc_span" }
 rustc_ast = { path = "../rustc_ast" }
 unicode-normalization = "0.1.11"
+unicode-width = "0.1.4"
diff --git a/compiler/rustc_parse/src/lexer/mod.rs b/compiler/rustc_parse/src/lexer/mod.rs
index 1e65cc27154..8e90f73b44e 100644
--- a/compiler/rustc_parse/src/lexer/mod.rs
+++ b/compiler/rustc_parse/src/lexer/mod.rs
@@ -4,7 +4,9 @@ use rustc_ast::tokenstream::{Spacing, TokenStream};
 use rustc_errors::{error_code, Applicability, DiagnosticBuilder, FatalError, PResult};
 use rustc_lexer::unescape::{self, Mode};
 use rustc_lexer::{Base, DocStyle, RawStrError};
-use rustc_session::lint::builtin::RUST_2021_PREFIXES_INCOMPATIBLE_SYNTAX;
+use rustc_session::lint::builtin::{
+    TEXT_DIRECTION_CODEPOINT_IN_COMMENT, RUST_2021_PREFIXES_INCOMPATIBLE_SYNTAX,
+};
 use rustc_session::lint::BuiltinLintDiagnostics;
 use rustc_session::parse::ParseSess;
 use rustc_span::symbol::{sym, Symbol};
@@ -129,6 +131,28 @@ impl<'a> StringReader<'a> {
             .struct_span_fatal(self.mk_sp(from_pos, to_pos), &format!("{}: {}", m, escaped_char(c)))
     }
 
+    /// Detect usages of Unicode codepoints changing the direction of the text on screen and loudly
+    /// complain about it.
+    fn lint_unicode_text_flow(&self, start: BytePos) {
+        // Opening delimiter of the length 2 is not included into the comment text.
+        let content_start = start + BytePos(2);
+        let content = self.str_from(content_start);
+        let span = self.mk_sp(start, self.pos);
+        const UNICODE_TEXT_FLOW_CHARS: &[char] = &[
+            '\u{202A}', '\u{202B}', '\u{202D}', '\u{202E}', '\u{2066}', '\u{2067}', '\u{2068}',
+            '\u{202C}', '\u{2069}',
+        ];
+        if content.contains(UNICODE_TEXT_FLOW_CHARS) {
+            self.sess.buffer_lint_with_diagnostic(
+                &TEXT_DIRECTION_CODEPOINT_IN_COMMENT,
+                span,
+                ast::CRATE_NODE_ID,
+                "unicode codepoint changing visible direction of text present in comment",
+                BuiltinLintDiagnostics::UnicodeTextFlow(span, content.to_string()),
+            );
+        }
+    }
+
     /// Turns simple `rustc_lexer::TokenKind` enum into a rich
     /// `rustc_ast::TokenKind`. This turns strings into interned
     /// symbols and runs additional validation.
@@ -136,7 +160,12 @@ impl<'a> StringReader<'a> {
         Some(match token {
             rustc_lexer::TokenKind::LineComment { doc_style } => {
                 // Skip non-doc comments
-                let doc_style = doc_style?;
+                let doc_style = if let Some(doc_style) = doc_style {
+                    doc_style
+                } else {
+                    self.lint_unicode_text_flow(start);
+                    return None;
+                };
 
                 // Opening delimiter of the length 3 is not included into the symbol.
                 let content_start = start + BytePos(3);
@@ -158,7 +187,12 @@ impl<'a> StringReader<'a> {
                 }
 
                 // Skip non-doc comments
-                let doc_style = doc_style?;
+                let doc_style = if let Some(doc_style) = doc_style {
+                    doc_style
+                } else {
+                    self.lint_unicode_text_flow(start);
+                    return None;
+                };
 
                 // Opening delimiter of the length 3 and closing delimiter of the length 2
                 // are not included into the symbol.
diff --git a/compiler/rustc_parse/src/lexer/unescape_error_reporting.rs b/compiler/rustc_parse/src/lexer/unescape_error_reporting.rs
index aa6b424ce2b..e26d094a0e2 100644
--- a/compiler/rustc_parse/src/lexer/unescape_error_reporting.rs
+++ b/compiler/rustc_parse/src/lexer/unescape_error_reporting.rs
@@ -154,12 +154,17 @@ pub(crate) fn emit_unescape_error(
             assert!(mode.is_bytes());
             let (c, span) = last_char();
             let mut err = handler.struct_span_err(span, "non-ASCII character in byte constant");
-            err.span_label(span, "byte constant must be ASCII");
+            let postfix = if unicode_width::UnicodeWidthChar::width(c).unwrap_or(1) == 0 {
+                format!(" but is {:?}", c)
+            } else {
+                String::new()
+            };
+            err.span_label(span, &format!("byte constant must be ASCII{}", postfix));
             if (c as u32) <= 0xFF {
                 err.span_suggestion(
                     span,
                     &format!(
-                        "if you meant to use the unicode code point for '{}', use a \\xHH escape",
+                        "if you meant to use the unicode code point for {:?}, use a \\xHH escape",
                         c
                     ),
                     format!("\\x{:X}", c as u32),
@@ -173,7 +178,7 @@ pub(crate) fn emit_unescape_error(
                 err.span_suggestion(
                     span,
                     &format!(
-                        "if you meant to use the UTF-8 encoding of '{}', use \\xHH escapes",
+                        "if you meant to use the UTF-8 encoding of {:?}, use \\xHH escapes",
                         c
                     ),
                     utf8.as_bytes()
@@ -187,10 +192,15 @@ pub(crate) fn emit_unescape_error(
         }
         EscapeError::NonAsciiCharInByteString => {
             assert!(mode.is_bytes());
-            let (_c, span) = last_char();
+            let (c, span) = last_char();
+            let postfix = if unicode_width::UnicodeWidthChar::width(c).unwrap_or(1) == 0 {
+                format!(" but is {:?}", c)
+            } else {
+                String::new()
+            };
             handler
                 .struct_span_err(span, "raw byte string must be ASCII")
-                .span_label(span, "must be ASCII")
+                .span_label(span, &format!("must be ASCII{}", postfix))
                 .emit();
         }
         EscapeError::OutOfRangeHexEscape => {
diff --git a/src/test/ui/parser/unicode-control-codepoints.rs b/src/test/ui/parser/unicode-control-codepoints.rs
new file mode 100644
index 00000000000..5af0b585a12
--- /dev/null
+++ b/src/test/ui/parser/unicode-control-codepoints.rs
@@ -0,0 +1,39 @@
+fn main() {
+    // if access_level != "us‫e‪r" { // Check if admin
+    //~^ ERROR unicode codepoint changing visible direction of text present in comment
+    println!("us\u{202B}e\u{202A}r");
+    println!("{:?}", r#"us\u{202B}e\u{202A}r"#);
+    println!("{:?}", b"us\u{202B}e\u{202A}r");
+    //~^ ERROR unicode escape in byte string
+    //~| ERROR unicode escape in byte string
+    println!("{:?}", br##"us\u{202B}e\u{202A}r"##);
+
+    println!("{:?}", "/*‮ } ⁦if isAdmin⁩ ⁦ begin admins only ");
+    //~^ ERROR unicode codepoint changing visible direction of text present in literal
+
+    println!("{:?}", r##"/*‮ } ⁦if isAdmin⁩ ⁦ begin admins only "##);
+    //~^ ERROR unicode codepoint changing visible direction of text present in literal
+    println!("{:?}", b"/*‮ } ⁦if isAdmin⁩ ⁦ begin admins only ");
+    //~^ ERROR non-ASCII character in byte constant
+    //~| ERROR non-ASCII character in byte constant
+    //~| ERROR non-ASCII character in byte constant
+    //~| ERROR non-ASCII character in byte constant
+    println!("{:?}", br##"/*‮ } ⁦if isAdmin⁩ ⁦ begin admins only "##);
+    //~^ ERROR raw byte string must be ASCII
+    //~| ERROR raw byte string must be ASCII
+    //~| ERROR raw byte string must be ASCII
+    //~| ERROR raw byte string must be ASCII
+    println!("{:?}", '‮');
+    //~^ ERROR unicode codepoint changing visible direction of text present in literal
+}
+
+//"/*‮ } ⁦if isAdmin⁩ ⁦ begin admins only */"
+//~^ ERROR unicode codepoint changing visible direction of text present in comment
+
+/**  '‮'); */fn foo() {}
+//~^ ERROR unicode codepoint changing visible direction of text present in doc comment
+
+/**
+ *
+ *  '‮'); */fn bar() {}
+//~^^^ ERROR unicode codepoint changing visible direction of text present in doc comment
diff --git a/src/test/ui/parser/unicode-control-codepoints.stderr b/src/test/ui/parser/unicode-control-codepoints.stderr
new file mode 100644
index 00000000000..71509fe41a8
--- /dev/null
+++ b/src/test/ui/parser/unicode-control-codepoints.stderr
@@ -0,0 +1,192 @@
+error: unicode escape in byte string
+  --> $DIR/unicode-control-codepoints.rs:6:26
+   |
+LL |     println!("{:?}", b"us\u{202B}e\u{202A}r");
+   |                          ^^^^^^^^ unicode escape in byte string
+   |
+   = help: unicode escape sequences cannot be used as a byte or in a byte string
+
+error: unicode escape in byte string
+  --> $DIR/unicode-control-codepoints.rs:6:35
+   |
+LL |     println!("{:?}", b"us\u{202B}e\u{202A}r");
+   |                                   ^^^^^^^^ unicode escape in byte string
+   |
+   = help: unicode escape sequences cannot be used as a byte or in a byte string
+
+error: non-ASCII character in byte constant
+  --> $DIR/unicode-control-codepoints.rs:16:26
+   |
+LL |     println!("{:?}", b"/* } if isAdmin  begin admins only ");
+   |                          ^ byte constant must be ASCII but is '\u{202e}'
+   |
+help: if you meant to use the UTF-8 encoding of '\u{202e}', use \xHH escapes
+   |
+LL |     println!("{:?}", b"/*\xE2\x80\xAE } if isAdmin  begin admins only ");
+   |                          ~~~~~~~~~~~~
+
+error: non-ASCII character in byte constant
+  --> $DIR/unicode-control-codepoints.rs:16:30
+   |
+LL |     println!("{:?}", b"/* } if isAdmin  begin admins only ");
+   |                             ^ byte constant must be ASCII but is '\u{2066}'
+   |
+help: if you meant to use the UTF-8 encoding of '\u{2066}', use \xHH escapes
+   |
+LL |     println!("{:?}", b"/* } \xE2\x81\xA6if isAdmin  begin admins only ");
+   |                             ~~~~~~~~~~~~
+
+error: non-ASCII character in byte constant
+  --> $DIR/unicode-control-codepoints.rs:16:41
+   |
+LL |     println!("{:?}", b"/* } if isAdmin  begin admins only ");
+   |                                       ^ byte constant must be ASCII but is '\u{2069}'
+   |
+help: if you meant to use the UTF-8 encoding of '\u{2069}', use \xHH escapes
+   |
+LL |     println!("{:?}", b"/* } if isAdmin\xE2\x81\xA9  begin admins only ");
+   |                                       ~~~~~~~~~~~~
+
+error: non-ASCII character in byte constant
+  --> $DIR/unicode-control-codepoints.rs:16:43
+   |
+LL |     println!("{:?}", b"/* } if isAdmin  begin admins only ");
+   |                                        ^ byte constant must be ASCII but is '\u{2066}'
+   |
+help: if you meant to use the UTF-8 encoding of '\u{2066}', use \xHH escapes
+   |
+LL |     println!("{:?}", b"/* } if isAdmin \xE2\x81\xA6 begin admins only ");
+   |                                        ~~~~~~~~~~~~
+
+error: raw byte string must be ASCII
+  --> $DIR/unicode-control-codepoints.rs:21:29
+   |
+LL |     println!("{:?}", br##"/* } if isAdmin  begin admins only "##);
+   |                             ^ must be ASCII but is '\u{202e}'
+
+error: raw byte string must be ASCII
+  --> $DIR/unicode-control-codepoints.rs:21:33
+   |
+LL |     println!("{:?}", br##"/* } if isAdmin  begin admins only "##);
+   |                                ^ must be ASCII but is '\u{2066}'
+
+error: raw byte string must be ASCII
+  --> $DIR/unicode-control-codepoints.rs:21:44
+   |
+LL |     println!("{:?}", br##"/* } if isAdmin  begin admins only "##);
+   |                                          ^ must be ASCII but is '\u{2069}'
+
+error: raw byte string must be ASCII
+  --> $DIR/unicode-control-codepoints.rs:21:46
+   |
+LL |     println!("{:?}", br##"/* } if isAdmin  begin admins only "##);
+   |                                           ^ must be ASCII but is '\u{2066}'
+
+error: unicode codepoint changing visible direction of text present in comment
+  --> $DIR/unicode-control-codepoints.rs:2:5
+   |
+LL |     // if access_level != "user" { // Check if admin
+   |     ^^^^^^^^^^^^^^^^^^^^^^^^^--^^^^^^^^^^^^^^^^^^^^^
+   |     |                        ||
+   |     |                        |'\u{202a}'
+   |     |                        '\u{202b}'
+   |     this comment contains invisible unicode text flow control codepoints
+   |
+   = note: `#[deny(text_direction_codepoint_in_comment)]` on by default
+   = note: these kind of unicode codepoints change the way text flows on applications that support them, but can cause confusion because they change the order of characters on the screen
+   = help: if their presence wasn't intentional, you can remove them
+
+error: unicode codepoint changing visible direction of text present in comment
+  --> $DIR/unicode-control-codepoints.rs:30:1
+   |
+LL | //"/* } if isAdmin  begin admins only */"
+   | ^^^^^-^^-^^^^^^^^^--^^^^^^^^^^^^^^^^^^^^^
+   | |    |  |         ||
+   | |    |  |         |'\u{2066}'
+   | |    |  |         '\u{2069}'
+   | |    |  '\u{2066}'
+   | |    '\u{202e}'
+   | this comment contains invisible unicode text flow control codepoints
+   |
+   = note: these kind of unicode codepoints change the way text flows on applications that support them, but can cause confusion because they change the order of characters on the screen
+   = help: if their presence wasn't intentional, you can remove them
+
+error: unicode codepoint changing visible direction of text present in literal
+  --> $DIR/unicode-control-codepoints.rs:11:22
+   |
+LL |     println!("{:?}", "/* } if isAdmin  begin admins only ");
+   |                      ^^^-^^-^^^^^^^^^--^^^^^^^^^^^^^^^^^^^
+   |                      |  |  |         ||
+   |                      |  |  |         |'\u{2066}'
+   |                      |  |  |         '\u{2069}'
+   |                      |  |  '\u{2066}'
+   |                      |  '\u{202e}'
+   |                      this literal contains invisible unicode text flow control codepoints
+   |
+   = note: `#[deny(text_direction_codepoint_in_literal)]` on by default
+   = note: these kind of unicode codepoints change the way text flows on applications that support them, but can cause confusion because they change the order of characters on the screen
+   = help: if their presence wasn't intentional, you can remove them
+help: if you want to keep them but make them visible in your source code, you can escape them
+   |
+LL |     println!("{:?}", "/*\u{202e} } \u{2066}if isAdmin\u{2069} \u{2066} begin admins only ");
+   |                         ~~~~~~~~   ~~~~~~~~          ~~~~~~~~ ~~~~~~~~
+
+error: unicode codepoint changing visible direction of text present in literal
+  --> $DIR/unicode-control-codepoints.rs:14:22
+   |
+LL |     println!("{:?}", r##"/* } if isAdmin  begin admins only "##);
+   |                      ^^^^^^-^^-^^^^^^^^^--^^^^^^^^^^^^^^^^^^^^^
+   |                      |     |  |         ||
+   |                      |     |  |         |'\u{2066}'
+   |                      |     |  |         '\u{2069}'
+   |                      |     |  '\u{2066}'
+   |                      |     '\u{202e}'
+   |                      this literal contains invisible unicode text flow control codepoints
+   |
+   = note: these kind of unicode codepoints change the way text flows on applications that support them, but can cause confusion because they change the order of characters on the screen
+   = help: if their presence wasn't intentional, you can remove them
+help: if you want to keep them but make them visible in your source code, you can escape them
+   |
+LL |     println!("{:?}", r##"/*\u{202e} } \u{2066}if isAdmin\u{2069} \u{2066} begin admins only "##);
+   |                            ~~~~~~~~   ~~~~~~~~          ~~~~~~~~ ~~~~~~~~
+
+error: unicode codepoint changing visible direction of text present in literal
+  --> $DIR/unicode-control-codepoints.rs:26:22
+   |
+LL |     println!("{:?}", '');
+   |                      ^-
+   |                      ||
+   |                      |'\u{202e}'
+   |                      this literal contains an invisible unicode text flow control codepoint
+   |
+   = note: these kind of unicode codepoints change the way text flows on applications that support them, but can cause confusion because they change the order of characters on the screen
+   = help: if their presence wasn't intentional, you can remove them
+help: if you want to keep them but make them visible in your source code, you can escape them
+   |
+LL |     println!("{:?}", '\u{202e}');
+   |                       ~~~~~~~~
+
+error: unicode codepoint changing visible direction of text present in doc comment
+  --> $DIR/unicode-control-codepoints.rs:33:1
+   |
+LL | /**  ''); */fn foo() {}
+   | ^^^^^^^^^^^^ this doc comment contains an invisible unicode text flow control codepoint
+   |
+   = note: these kind of unicode codepoints change the way text flows on applications that support them, but can cause confusion because they change the order of characters on the screen
+   = note: if their presence wasn't intentional, you can remove them
+   = note: if you want to keep them but make them visible in your source code, you can escape them: '\u{202e}'
+
+error: unicode codepoint changing visible direction of text present in doc comment
+  --> $DIR/unicode-control-codepoints.rs:36:1
+   |
+LL | / /**
+LL | |  *
+LL | |  *  ''); */fn bar() {}
+   | |___________^ this doc comment contains an invisible unicode text flow control codepoint
+   |
+   = note: these kind of unicode codepoints change the way text flows on applications that support them, but can cause confusion because they change the order of characters on the screen
+   = note: if their presence wasn't intentional, you can remove them
+   = note: if you want to keep them but make them visible in your source code, you can escape them: '\u{202e}'
+
+error: aborting due to 17 previous errors
+

--------------42AA029C457D6BBA7DCDE10F
Content-Type: text/plain; charset=UTF-8;
 name="rust-1.56.0-fix.patch.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="rust-1.56.0-fix.patch.asc"

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0KCmlRSXpCQUFCQ2dBZEZp
RUVWMm5JaS9YZFBSU2lOS2VzNzdtR0N1ZFNEYXdGQW1GL0k1a0FDZ2tRNzdt
R0N1ZFMKRGF5eTB4QUFybnBxbGR6QWgxdEMwU3dENFFQSlhFbTBxdUR5N3F5
RUg0a0pzSXpHNjlTOEdHWjY1VU1DNlF0UgpjWmIwVWlSaE9qS0txRFVPczFx
VldmVlVPalpEbDhVV3FqclY1Y21WVlJ2SjViYlZlRWM5VmJtUFFHTnU3SG9v
CmNCRkRLUjhCKzFBU0t2UWhTWWpEckNsUVZaa0RZazlpRy9jZTdsQVgrZGFF
bTV1NHIvajlyM1VqbmhhWGhOVjMKY0wxaEo2SFNmN3JwSDJqVnd4LzFHTGZj
bk9VTlFURFFRUVF4OU1WWVRaUGk3Z3Q5ZVhneTRiU21oSGR5UEhMagpmdENk
MWZESi9OTWtMK1RJMXkwR3luWUh2VUJSejZIdlBVZ1k0bzJHR1U4TDdrTzcx
Y2xRbWNqdytweG9zUGs4Cm5NeXhJV1N6NzZVc245VGVzcXl0SFZ5SFFDWHd0
aVVYcmduZjdhSVVsakhqbklDRk1rRGZvSVlzRlBOdWNjcHgKNzFWWUdRUkdt
MmhGNjVLMGJ5ZXJTOE9CWFEvVVRIdXlSK1o2VUNvQnBEWWdYSFBIRStOY1E5
blRVd3k2NjVyWgowR0FTdmthTWM5MDhhWnM3cURXMmVpRWVzTnZJSXFyRnI5
TVFWUWlieHBycm4zR3dGL281d3FCTzAwNWxZdm5lCmNqdEpnSDFSNWd3MG1J
MjFNbE9XdEI0QTRpbE5QSW1QWUVZVFM4SGxLVnRpbzk1UWdrdlgyOHd5eFdp
ZzFpY3kKVXhsVEdsV2JkbHJlWlp5UnBJTmIyS2VzTC9jM1BJaE51TWJjbzht
MW00cWxZSUJENWJXQWoyb1FhU295bHhBVAp6dnBjVEl3aFJ2SzJoZ3E4b3hz
Zk1OeWVEWHY4VUhsZGFQaVZyWkpHZ25wcml3Q1NYSEk9Cj02dnBMCi0tLS0t
RU5EIFBHUCBTSUdOQVRVUkUtLS0tLQo=

--------------42AA029C457D6BBA7DCDE10F--

