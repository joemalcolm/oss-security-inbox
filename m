Received: (qmail 19967 invoked by uid 550); 9 Apr 2025 21:04:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19932 invoked from network); 9 Apr 2025 21:04:03 -0000
Message-ID: <3bbeb032-ee9c-47ef-bcbf-6c9912041c73@pipping.org>
Date: Wed, 9 Apr 2025 23:03:54 +0200
MIME-Version: 1.0
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] xmlrpc-c bundles a (very old and) vulnerable copy of libexpat

Hello oss-security!


Red Hat and OpenWrt [1] and Gentoo [2] are already aware, but maybe this
matter is of interest to more of you:

It has come to my attention through [0] that xmlrpc-c bundles a (very
old and) vulnerable copy of libexpat.  I reached out to upstream and
they made a few minor related changes:

- The configure script started to default to libxml2 rather than
   libexpat at [3].

- Also there is a new readme now [4] that warns that the bundled Expat
   is "unfit for use in a setting where the communication partner is not
   friendly" and a similar new note [5] in the main readme saying…

     "When the Expat developer pointed out in 2025 the likelihood that
     the Xmlrpc-c fork of Expat contained dozens of security exposure
     bugs, the Xmlrpc-c maintainer decided to make external Libxml2 the
     default."

So upstream has no plans of deleting that super vulnerable bundle in 
favor of using system libexpat.

I did offer a patch to use system libexpat [6] to the point where folder
lib/expat/ could be fully deleted in packaging (to be accident proof),
but there was no interest from upstream.  That patch hence went into
Gentoo packaging downstream [6] instead.

If you need help with porting that patch to different versions of
xmlrpc-c, I may be able to help.

Best



Sebastian


[0] https://github.com/signalwire/freeswitch/pull/2768
[1] https://github.com/openwrt/packages/issues/26263
[2] https://bugs.gentoo.org/952113
[3] 
https://sourceforge.net/p/xmlrpc-c/code/3290/tree//trunk/configure.ac?diff=50c5155b5fcbc9098bb77a4a:3289
[4] 
https://sourceforge.net/p/xmlrpc-c/code/3307/tree//trunk/lib/expat/README
[5] 
https://sourceforge.net/p/xmlrpc-c/code/3290/tree//trunk/README?diff=50c5155b5fcbc9098bb77a4a:3289
[6] 
https://raw.githubusercontent.com/gentoo/gentoo/61b6130343a41b49da1ffe7376ab5d2077a37411/dev-libs/xmlrpc-c/files/xmlrpc-c-1.59.03-use-system-expat.patch

