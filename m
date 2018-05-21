X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2283" "Monday" "21" "May" "2018" "14:57:31" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20180521145731.60826823@redhat.com>" "46" "Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" nil nil nil "5" "2018052112:57:31" "[oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" (number mark "U       thoger@redha May 21   46/2283  " thread-indent "\"Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability\"\n") "<CANi-yg8cdZzBMZRv_siCMwt8gfLWrtPvyO_vGNgGvzcAC-QngA@mail.gmail.com>" ("<CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>" "<20180514145244.64c73b08@redhat.com>" "<CANi-yg8cdZzBMZRv_siCMwt8gfLWrtPvyO_vGNgGvzcAC-QngA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13501 invoked by uid 550); 21 May 2018 12:57:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13481 invoked from network); 21 May 2018 12:57:47 -0000
Date: Mon, 21 May 2018 14:57:31 +0200
From: Tomas Hoger <thoger@redhat.com>
To: Bryan Pendleton <bpendleton.derby@gmail.com>
Cc: oss-security@lists.openwall.com, security <security@apache.org>, gregory
 draperi <gregory.draperi@gmail.com>
Message-ID: <20180521145731.60826823@redhat.com>
In-Reply-To: <CANi-yg8cdZzBMZRv_siCMwt8gfLWrtPvyO_vGNgGvzcAC-QngA@mail.gmail.com>
References: <CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>
	<20180514145244.64c73b08@redhat.com>
	<CANi-yg8cdZzBMZRv_siCMwt8gfLWrtPvyO_vGNgGvzcAC-QngA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Mon, 21 May 2018 12:57:35 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Mon, 21 May 2018 12:57:35 +0000 (UTC) for IP:'10.11.54.6' DOMAIN:'int-mx06.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'thoger@redhat.com' RCPT:''
Subject: Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby
 externally-controlled input vulnerability

On Mon, 14 May 2018 21:04:58 -0700 Bryan Pendleton wrote:

> Hi Tomas, thank you for getting in touch, and for the excellent questions.
> 
> I think the problem here is primarily my lack of skill in clearly writing
> disclosure information about vulnerabilities, so let me try to do my best
> to clarify.
> 
> Indeed, allowing the Derby server to open an untrusted database is
> of serious concern, and, due to Derby's rich extensibility features, can
> allow the execution of arbitrary *Java* code directly in Derby. So this
> is an important concern.
> 
> And yes, you are correct that the selection of 10.3.1.4 as the first
> affected release is because the default security policy dates from
> that release, and you are also correct that the "ping with arguments"
> pre-dates that. We certainly hope that nobody is running such 11-year-old
> software any more; if possible, we would really like them to upgrade.
> 
> Regarding the question of which fix is the "actual security fix," I find
> this a challenging question. In order to exploit the vulnerability, the
> ping command must allow the specially crafted request packet, *and*
> the security policy must allow the access to the untrusted database.
> Closing *either* of those holes is enough to prevent that exploit; we chose
> to close *both* of them with the 10.14.2.0 release.
> 
> The Derby development team's primary recommendation is that
> any Derby Network Server deployed in a production environment
> should use an explicitly-developed custom security policy, and not
> depend on the default policy; still, the new security policy that is
> installed by default by 10.14.2.0 is considerably more secure than
> the policy that was previously in place.
> 
> I hope this helps. If I have misunderstood the intent of any of your
> questions, please let me know.

Thank you for your detailed reply.  It addresses my questions.

FWIW, in this case, the change of the ping command handling is what I'd
view as the security fix.  The change of the default security policy
would not be sufficient in deployments where custom security policy is
used and that policy is less restrictive than the new default policy
(even though it's maybe more restrictive than the old default).

-- 
Tomas Hoger / Red Hat Product Security
