X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2126" "Friday" "8" "November" "2019" "23:23:35" "+1030" "Alex Murray" "alex.murray@canonical.com" "<87zhh6a5rk.fsf@canonical.com>" "56" "[oss-security] CVE-2019-18397 - Stack buffer overflow in GNU FriBidi >= 1.0.0" nil nil nil "11" "2019110812:53:35" "[oss-security] CVE-2019-18397 - Stack buffer overflow in GNU FriBidi >= 1.0.0" (number mark "U       alex.murray@ Nov  8   56/2126  " thread-indent "\"[oss-security] CVE-2019-18397 - Stack buffer overflow in GNU FriBidi >= 1.0.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-18397 - Stack buffer overflow in GNU FriBidi >= 1.0.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20322 invoked by uid 550); 8 Nov 2019 13:54:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32090 invoked from network); 8 Nov 2019 12:53:51 -0000
User-agent: mu4e 1.2.0; emacs 26.3
From: Alex Murray <alex.murray@canonical.com>
To: oss-security@lists.openwall.com
Date: Fri, 08 Nov 2019 23:23:35 +1030
Message-ID: <87zhh6a5rk.fsf@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] CVE-2019-18397 - Stack buffer overflow in GNU FriBidi >= 1.0.0

CVE-2019-18397 - GNU FriBidi stack buffer overflow >= 1.0.0
-----------------------------------------------------------

Overview:
 A stack buffer overflow in the fribidi_get_par_embedding_levels_ex()
 function in lib/fribidi-bidi.c of GNU FriBidi 1.0.0 through 1.0.7
 allows an attacker to cause a denial of service or possibly execute
 arbitrary code by delivering crafted text content to a user, when this
 content is then rendered by an application that uses FriBidi for text
 layout calculations. Examples include any GNOME or GTK+ based
 application that uses Pango for text rendering, as this internally uses
 FriBidi for bidirectional text layout. For example, the attacker can
 construct a crafted text file to be opened in GEdit, a crafted IRC
 message to be viewed in HexChat or a crafted email to be viewed in
 Evolution.

Detailed analysis:
 The function fribidi_get_par_embedding_levels_ex()
 in lib/fribidi-bidi.c of GNU FriBidi 1.0.0 through 1.0.7 contains a
 fixed size buffer base_level_per_iso_level which is used to accumulate
 the current isolate level while calculating the bi-directional
 embedding levels of the requested text paragraph.

 ...
 FriBidiLevel base_level_per_iso_level[FRIBIDI_BIDI_MAX_EXPLICIT_LEVEL];
 ...

 When accumulating into this buffer, the index is incremented without
 any check for overflow of the buffer length, resulting in a stack
 buffer overflow when processing more then
 FRIBIDI_BIDI_MAX_EXPLICIT_LEVEL elements.

 ...
          RL_ISOLATE_LEVEL (pp) = isolate_level++;
          base_level_per_iso_level[isolate_level] = new_level;
 ...

 This is fixed by checking the current value of isolate_level against
 the size of base_level_per_iso_level
 (ie. FRIBIDI_BIDI_MAX_EXPLICIT_LEVEL) to ensure this is only
 incremented when it will not subsequently overflow the bounds of the
 array.

Affected Versions:
 From 1.0.0 to 1.0.7 (no official upstream release has been made
 containing the fix)

References:
 https://github.com/fribidi/fribidi/commit/034c6e9a1d296286305f4cfd1e0072b879f52568

CRD:
 2019-11-07 17:00 UTC

Credit:
 Alex Murray of the Ubuntu Security Team

