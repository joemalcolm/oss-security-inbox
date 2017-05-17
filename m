X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3120" "Wednesday" "17" "May" "2017" "13:41:32" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9rNUXu16RD_fYYDfJa74F8M38tSjk+OU8ugEk8Zi4WKug@mail.gmail.com>" "69" "[oss-security] Defense in depth patch for rxvt-unicode" "^Cc:" nil nil "5" "2017051711:41:32" "[oss-security] Defense in depth patch for rxvt-unicode" (number mark "        Jason@zx2c4. May 17   69/3120  " thread-indent "\"[oss-security] Defense in depth patch for rxvt-unicode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8117 invoked by uid 550); 17 May 2017 11:41:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8083 invoked from network); 17 May 2017 11:41:46 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:from:date:message-id:subject:to:cc:content-type; s=mail; bh=onz
	7L8RQp1WtodU2LRMkn5zfW0k=; b=p+qU4byKSVhx8iZPQT6RyOue1lxQxQucFEf
	lCq7yboXWlZrHZAtTIPiykK5kefIsKlsPpHZL+JKV3Fev97OEb2h7spkDoQrzblP
	lmS95zdFryMkMmKPy84Tf3xnlY1d6ZrNX7V57Os857wYZnw08N/lbLIkiqZCyEWR
	PbF+IpeB2XqTKgH2zQS7mYuFY1zODJ/+5EI4zxY5d+KDd7JM85CHXlmF2L+HAsDT
	nvrNQ4IVomp9NHwY6nxSm2pLCiUPcsTO5jWtlZFSuf8qwIZ7Wa++BePkDCQCL9ix
	AzN8vp/w7sc5ATVM0+vyDUwreQzOMEsQZyESgS61z7hgwIsTyXg==
X-Gm-Message-State: AODbwcDVBIqMXN3+WieFpp/VLCgSR7knyfWIrwMClcSBOTjO5yOwzeBk
	HclcZqMqiyq6RFd793n1RU/iZjqsxA==
X-Received: by 10.202.71.198 with SMTP id u189mr1297703oia.195.1495021293067;
 Wed, 17 May 2017 04:41:33 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAHmME9rNUXu16RD_fYYDfJa74F8M38tSjk+OU8ugEk8Zi4WKug@mail.gmail.com>
Message-ID: <CAHmME9rNUXu16RD_fYYDfJa74F8M38tSjk+OU8ugEk8Zi4WKug@mail.gmail.com>
Content-Type: multipart/mixed; boundary="001a113e51c61afdac054fb6c59f"
Cc: rxvt-unicode@schmorp.de, "jer@gentoo.org" <jer@gentoo.org>
Date: Wed, 17 May 2017 13:41:32 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Defense in depth patch for rxvt-unicode
To: Marc Lehmann <schmorp@schmorp.de>, oss-security <oss-security@lists.openwall.com>

--001a113e51c61afdac054fb6c59f
Content-Type: text/plain; charset="UTF-8"

Hello list,

This email thread concerns my request to Marc to include the attached
patch inside rxvt-unicode upstream. My own downstream -- Gentoo's
jer@, also CCd -- won't include the patch until the agreement of
upstream. Thus, it's important we come to a good conclusion.

On Wed, May 17, 2017 at 3:17 AM, Marc Lehmann <schmorp@schmorp.de> wrote:
> On Fri, May 12, 2017 at 02:18:29PM +0200, "Jason A. Donenfeld" <zx2c4@gentoo.org> wrote:
>> I realize I might have used the wrong email address, so please see the
>> thread below.
>
> You used the right address, but since I was quite busy, and your mail
> contained nothing but a patch that might break valid uses without any
> explanation of what it might be useful for, I didn't immediately know what
> to reply and it fell through the cracks.

Hi Marc,

This patch was part of a larger discussion on which you were CCd from
distros. It seems possible that either those messages didn't make it
to you, or you didn't have time to read them.

In any case, the attached patch would be a useful defense in depth
measure to prevent future integer overflow bugs, such as the one that
was recently found in rxvt. Briefly looking though the code, it seems
like there is a considerable amount of unchecked integer arithmetic,
often passing between several functions in several files. Short of
somehow auditing every arithmetic call path, a considerable
undertaking, Alexander and I would recommend simply limiting the range
of input from users.

As Alexander wrote in a recent email to you, the general opinion of
this list is that terminal emulators should not support the most
dangerous uses of escape sequences, even if they're technically valid.
The attached patch falls into that category. You seem to have made the
argument that the patch "might break valid uses". I've now provided to
you a bit of the backstory and recent basis which motivates this
patch. If this is compelling, I'd rest well knowing it's accepted
upstream. If this is not compelling, could you indicate to the list
why "might break valid uses" outweighs the potential security
mitigations?

Regards,
Jason

--001a113e51c61afdac054fb6c59f
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="rxvt-unicode-defense-in-depth-fix.patch"
Content-Disposition: attachment; 
	filename="rxvt-unicode-defense-in-depth-fix.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j2swvc890

ZGlmZiAtcnUgcnh2dC11bmljb2RlLTkuMjIvc3JjL2NvbW1hbmQuQyByeHZ0
LXVuaWNvZGUtOS4yMi1wYXRjaGVkL3NyYy9jb21tYW5kLkMKLS0tIHJ4dnQt
dW5pY29kZS05LjIyL3NyYy9jb21tYW5kLkMJMjAxNi0wMS0xOCAyMDozNTow
OC4wMDAwMDAwMDAgKzAxMDAKKysrIHJ4dnQtdW5pY29kZS05LjIyLXBhdGNo
ZWQvc3JjL2NvbW1hbmQuQwkyMDE3LTA0LTI4IDA5OjUyOjM1LjQ0MDI0NTYw
NyArMDIwMApAQCAtMjg2OCw3ICsyODY4LDcgQEAKICAgaSA9IGNoIC0gQ1NJ
X0lDSDsKICAgbmRlZiA9IGdldF9ieXRlX2FycmF5X2JpdCAoY3NpX2RlZmF1
bHRzLCBpKTsKICAgZm9yIChwID0gMDsgcCA8IG5hcmdzOyBwKyspCi0gICAg
aWYgKGFyZ1twXSA9PSAtMSkKKyAgICBpZiAoYXJnW3BdIDwgMCB8fCBhcmdb
cF0gPiAzMDAwMCkKICAgICAgIGFyZ1twXSA9IG5kZWY7CiAKICAgLyoK

--001a113e51c61afdac054fb6c59f--
