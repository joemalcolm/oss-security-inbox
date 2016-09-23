X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1819" "Thursday" "22" "September" "2016" "21:39:41" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8k=JmgBjwV2HD_tmyg7-U-9HPLmeJMAKPk2TBm5KrsfKw@mail.gmail.com>" "46" "[oss-security] CVE Assignment for Crypto++ and \"AES and incorrect argument to _freea() under Microsoft compilers\"" "^Cc:" nil nil "9" "2016092301:39:41" "[oss-security] CVE Assignment for Crypto++ and \"AES and incorrect argument to _freea() under Microsoft compilers\"" (number mark "        noloader@gma Sep 22   46/1819  " thread-indent "\"[oss-security] CVE Assignment for Crypto++ and \"AES and incorrect argument to _freea() under Microsoft compilers\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13320 invoked by uid 550); 23 Sep 2016 12:17:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27955 invoked from network); 23 Sep 2016 01:39:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=zFdaDgz0Bjdm7QSOvZD42pqrc+TPqwWXB/vDgdBldek=;
        b=iJAZ1rQVt9W3hTezOZdvn6hcGfxGmMetZeCAjgMAcsDD5on+7x7JTJYjnao27a8ChL
         TLV3LBBhPM/o3k4l6yhCd+xWO5D06jHiY2CYPtk6FgmgCOHaxNw1DSsbrF8Zs6MJHwZr
         5LCSO0WPPxoBiLhk4o1/lbilV/Gx2Pm4HZbnXUGIcxlg3SaDyqAstMLIbmu+AUHFn5Ja
         GQoCNMVRF1OaIwMYyX2116n/gOHYAQTSkxL57CJrKXjYjslTzDqvFrgzPO92JZc8EYFX
         41hPcy5sIqnOy9v2fITI4JZrUCAqH/sAJCkIZ60TemCGDlh6GgG4I2ik4NeT0C6Z60PG
         akGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=zFdaDgz0Bjdm7QSOvZD42pqrc+TPqwWXB/vDgdBldek=;
        b=lDHtfoj9M5kRGZvvfNvnd9komuZPe6TAb1PbcukV6Hgi1XmtOEJcGrn0tZ8UPJSivn
         JsySFxuam5Bn+vKLvxQR/QMkm7R8geg4mC27pnQRZudGsuBB6F2uTWGXJ71TfbKe6r+F
         kVrp5xItJr4WJlKtvVoWPFphCfQI1pLovEgbs48g+els+RtQppp2tK5xfXw6GeyXKHKb
         jOgEtVmmlpFZvC7No7xIjxYrAN6JHltIjJk47xhlJ8DY7wHfEI7YbKgM9O9DpaH/W+hr
         v8qWNQ5nMFzEkcssiuDlkP9oHqLRJeqToW6+FjCodJVPIwREjdze3rhzQHY9AyYE/huU
         /AGg==
X-Gm-Message-State: AE9vXwMG9Ct4WQjiM20tQOVvbK+Fe/P/+F+q4ctC8wElniDW7pAa1ttQerXx9LzBljv+6JKjON+FncXx0h9U3w==
X-Received: by 10.107.168.70 with SMTP id r67mr6951334ioe.149.1474594781920;
 Thu, 22 Sep 2016 18:39:41 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAH8yC8k=JmgBjwV2HD_tmyg7-U-9HPLmeJMAKPk2TBm5KrsfKw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: John Byrd <jbyrd@giganticsoftware.com>
Date: Thu, 22 Sep 2016 21:39:41 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Assignment for Crypto++ and "AES and incorrect argument to
 _freea() under Microsoft compilers"
To: oss-security@lists.openwall.com

CVE assignment, please.

=== INTRODUCTION ===

John Byrd reported a crash in Crypto++'s AES implementation under
Microsoft compilers due to use of `_malloca`, `AliasedWithTables` and
`_freea`. Crypto++ can potentially free the wrong pointer when the
pointer is adjusted to flush cache lines to avoid Bernstein's cache
timing attacks.

=== SCOPE ===

The bug only affects Crypto++ 5.6.4 and was introduced at
http://github.com/weidai11/cryptopp/commit/823bc93357da32a3a4a2b71b9915a4e124839d18.

The bug is specific to Windows and Microsoft compilers because its
guarded by `_MSC_VER`.

The bug does not affect Unix and Linux; and does not affect
non-Microsoft compilers on Windows, like ICC and Borland.

=== DETAILS ===

The code in question asks `_malloca` for a block of memory. The code
also over-commits the size and adjust the pointer to a 256-byte
boundary. The pointer is sent `AliasedWithTables` to flush cache
lines. If `AliasedWithTables` cannot perform the flush, then it
returns false. Upon the false return, the code reallocates, adjusts
the pointer and calls `AliasedWithTables` again. Eventually the call
succeeds. After the code in question completes, it frees the adjusted
pointer and not the original pointer using `_freea`.

`alloca` is on Microsoft's [SDLC banned function list
(http://msdn.microsoft.com/en-us/library/bb288454.aspx). The code was
migrated from `alloca`  to `_malloca` for C&A purposes.

`_malloca` and `_freea` are Microsoft SDLC functions. Microsoft
sometimes uses the heap rather than the stack for `_malloca`, and
that's the reason `_freea` is needed.

=== CORRECTION ===

The issue is being tracked at https://github.com/weidai11/cryptopp/issues/302.

The code will be fixed by using the correct pointer. The fix will be
pushed within about two weeks along with CVE-2016-7420.
