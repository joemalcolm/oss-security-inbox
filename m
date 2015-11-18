X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1456" "Wednesday" "18" "November" "2015" "11:51:23" "+0100" "Florian Weimer" "fweimer@redhat.com" "<564C582B.6080803@redhat.com>" "27" "[oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111810:51:23" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       fweimer@redh Nov 18   27/1456  " thread-indent "\"[oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<20151118021008.GB31188@openwall.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<564B6536.2030908@redhat.com>" "<20151118021008.GB31188@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11978 invoked by uid 550); 18 Nov 2015 10:51:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11958 invoked from network); 18 Nov 2015 10:51:38 -0000
To: Solar Designer <solar@openwall.com>, Jeff Law <law@redhat.com>
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
 <564B6536.2030908@redhat.com> <20151118021008.GB31188@openwall.com>
Cc: Bernd Schmidt <bschmidt@redhat.com>, oss-security@lists.openwall.com
From: Florian Weimer <fweimer@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <564C582B.6080803@redhat.com>
Date: Wed, 18 Nov 2015 11:51:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151118021008.GB31188@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] Re: Fwd: x86 ROP mitigation

On 11/18/2015 03:10 AM, Solar Designer wrote:

> This approach makes sense to me, but I think we should have a better
> idea of whether and how "a point where ROP gadgets are reasonably hard
> to find & exploit" is potentially reachable.  If it is not even
> potentially reachable, then this undermines the effort, unfortunately.

This came up in other discussions as well.  We even got to the point
where someone ran a ROP gadget finding tool on a core library, which did
not find any gadgets at all, and someone else found a useful one in a
few minutes with objdump and no other tool support (and this did not
even include jumping into the middle of instructions).

In the end, this boils down to lack of concrete goals.  “Blinding ROP
gadget finder X“ is easy (just change the ELF format in such a way that
it's no longer recognized by the tool), but probably not very useful if
you want to improve security, for any useful definition of “security”.

We face the problem that I and my immediate colleagues (on the Red Hat
tools team) do not have access to information about successful
compromises, and what attackers actually do today, on GNU/Linux systems,
both to achieve initial access and to maintain a presence afterwards.
Under these conditions, anything we implement is, to some degree,
arbitrary and a shot in the dark.  We can still use our best judgment to
set priorities, but we are very far from being guided by empirical evidence.

Florian
