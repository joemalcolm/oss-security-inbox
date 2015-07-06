X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["869" "Monday" "6" "July" "2015" "09:34:24" "+0200" "Florian Weimer" "fweimer@redhat.com" "<559A2F80.5030407@redhat.com>" "23" "Re: [oss-security] node.js out of band write" nil nil nil "7" "2015070607:34:24" "[oss-security] node.js out of band write" (number mark "        fweimer@redh Jul  6   23/869   " thread-indent "\"Re: [oss-security] node.js out of band write\"\n") "<1436140297.2777045.315833937.576534B9@webmail.messagingengine.com>" ("<1436140297.2777045.315833937.576534B9@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31794 invoked by uid 550); 6 Jul 2015 07:34:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31773 invoked from network); 6 Jul 2015 07:34:38 -0000
Message-ID: <559A2F80.5030407@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <1436140297.2777045.315833937.576534B9@webmail.messagingengine.com>
In-Reply-To: <1436140297.2777045.315833937.576534B9@webmail.messagingengine.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
CC: oss-security@lists.openwall.com
Date: Mon, 06 Jul 2015 09:34:24 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] node.js out of band write
To: feld@feld.me

On 07/06/2015 01:51 AM, Mark Felder wrote:
> Node has resolved a security vulnerability in their most recent release
> but do not appear to have requested a CVE ID.
> 
> http://blog.nodejs.org/2015/07/03/node-v0-12-6-stable/
> 
> Node v0.12.6 (Stable)
> Sat, 04 Jul 2015 02:34:23 UTC - release
> 
> This release of Node.js fixes a bug that triggers an out-of-band write
> in V8's utf-8 decoder. This bug impacts all Buffer to String
> conversions. This is an important security update as this bug can be
> used to cause a denial of service attack.

I have trouble reconciling this description with the fix in this commit:

<https://github.com/joyent/node/commit/78b0e30954111cfaba0edbeee85450d8cbc6fdf6>

Upstream v8 lacks this change.  Is it required in Node.js because
Node.js pokes at v8 internals in unsupported ways?

-- 
Florian Weimer / Red Hat Product Security
