X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2963" "Tuesday" "10" "November" "2020" "19:09:28" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<1236f86f-9196-c26f-ef8e-df9a82e7ef63@oracle.com>" "52" "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil "11" "2020111103:09:28" "[oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" (number mark "U       alan.coopers Nov 10   52/2963  " thread-indent "\"Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11\"\n") "<fd19615e-b049-ee54-9d34-3c89bda717b4@gmail.com>" ("<606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>" "<20201110164347.GA2236829@portlab>" "<d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>" "<20201110184321.GA2311015@portlab>" "<fd19615e-b049-ee54-9d34-3c89bda717b4@gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28340 invoked by uid 550); 11 Nov 2020 03:09:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28311 invoked from network); 11 Nov 2020 03:09:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=to : references : cc
 : from : subject : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=CBKX2csu5x1cCsZWjlE+t7fxnPU5nhDh9x4mDUdmM5I=;
 b=op62YpwzI1imhReXpvwdJPMuwArKHjEKMEaeH5/bbLm9C4RUBRVcj0zgBcDTKPVa+X2g
 3OYPVKv0gklRwtuGWpTKnKHqSMUrt0giRrgStIIsfDaLHwGFQ1kTlO2KtX0hY7dME7vi
 5xXzZ90isq3bKMqA6NyJfMAn7+VtRakdYri3AeXk5YzGBnRVbBaavh02V83MZ5qcvOEc
 5F1HZDMhihsJnuJXlomUScWcqTzR6O2n+ubVm/UHPmwUyKsCSD9KQNfmsRtSyoY9ZNEp
 GCb7fR5V8BNIT4C7nFTEKEwnAXsLGr0Z35IdMYqJKSRWY21Ni0uUvH5CziC3Vedr2Lw6 /g== 
To: oss-security@lists.openwall.com,
        "Demi M. Obenour"
 <demiobenour@gmail.com>,
        "Vladimir D. Seleznev" <vseleznv@altlinux.org>
References: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
 <20201110164347.GA2236829@portlab>
 <d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>
 <20201110184321.GA2311015@portlab>
 <fd19615e-b049-ee54-9d34-3c89bda717b4@gmail.com>
Cc: "X.Org Security Team" <xorg-security@lists.x.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <1236f86f-9196-c26f-ef8e-df9a82e7ef63@oracle.com>
Date: Tue, 10 Nov 2020 19:09:28 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.2.1
MIME-Version: 1.0
In-Reply-To: <fd19615e-b049-ee54-9d34-3c89bda717b4@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9801 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 adultscore=0 mlxscore=0 malwarescore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011110013
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9801 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1034
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011110014
Subject: Re: [oss-security] The importance of mutual authentication: Local
 Privilege Escalation in X11

On 11/10/20 11:12 AM, Demi M. Obenour wrote:
> On 11/10/20 1:43 PM, Vladimir D. Seleznev wrote:
>>>> This contravenes the ability to run X11 client from another user. The
>>>> idea is that X11 server allows any clients with right credentials
>>>> regardless of theirs processes UID or GID to connect to the server.
>>> Indeed it does, and I mention cryptographic authentication mechanisms
>>> below.  Instead of /tmp, /run/X11 would work just as well.  It is
>>> the mutual authentication that matters.
>> Do I understand you correctly: you propose to forbid running X11 clients
>> which processes belong to another users? In that case it is a bad idea:
>> I would like to run untrusted clients with special UIDs. Or if I
>> understand you wrongly, please explain how client of other user can
>> connect to the socket placed in /run/user/$UID with these strict access
>> permissions 0700?
> 
> If you aren’t using the X Security Extension or the X Access
> Control Extension, then X clients aren’t effectively isolated from
> each other.  Therefore, connecting untrusted X clients to the desktop
> session is a bad idea.

If they are truly untrusted, that is true, but that's rarely the case
in practice, even if they have a different UID.  In most cases, the
process that should be least trusted is the web browser running code
from so many untrusted sites under your own UID, but that's not something
we can fix at the X11 level.  In practice, no one really uses those extensions
as they have no need to isolate their clients from one another - the primary
real users I've seen are in multi-level desktop environments for maintaining
different data classification levels (Confidential, Restricted, Top Secret,
etc) and those are mostly migrating to separate VM's these days as most of
the multi-level desktop vendors exited the market as it was too small to be
profitable.

The biggest reason we don't have a fix after months of discussion is that
this isn't a simple implementation flaw like a buffer or integer overflow
for which the fix is obvious - this is outside the bounds of the security
model envisioned by the original designers of X11, and requires redesigning
our connection process for a different security model, and not everyone
agrees on what the correct security model is here.  If we start checking
UID's, how do we specify which UID's are allowed - an environment variable,
a config file, some other mechanism?  Do we store the actual uid value or
a user name that may depend on LDAP or NIS lookup?  What UID's do we accept
by default?

I'm hopeful we can make more progress now that this is something that can
be publicly discussed and worked out, instead of restricting it to the
small number of core developers on the security list.

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org

(As always, the above opinions are mine, and may not match my employer's.)
