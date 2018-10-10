X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Wednesday" "10" "October" "2018" "08:46:05" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<11222d94-037d-b88a-846a-24f08ee334ef@oracle.com>" "13" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018101015:46:05" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        alan.coopers Oct 10   13/638   " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<20181010145330.63e183d8@computer>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>" "<20181010145330.63e183d8@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7835 invoked by uid 550); 10 Oct 2018 15:46:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7803 invoked from network); 10 Oct 2018 15:46:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=6CjRu0aUJ9df4NOH6xGP10OHwo4kgJzx6h1E8PnAJ5Y=;
 b=uB7Z+e1EXeOB9hoJlbWJ00/Z+OyTEce38dh4JZMeENZAoYRrnZqwt9waBJTIO/y4m1Cr
 b8GYZxcKd/2LS/rjlacv3lz/Ik+HpHB0Xv3Cr9i/QFaR81f5wwTnxW2u7nYqN3+KLJfM
 WfuchzO4c3h1+YTsZIeVzc9S2c6NFQvY2aAoOqI3YgTeBOwPZD+VJxFuudwNosOEOwxR
 prpbEs8Qa5yhySS4eohZ56b8+EOW75Tjur/1O02TJWbnFvsYRiMdiW5rwS9OZ7GuOz5E
 C4CGYacwEIiP57tvYIQ5W1joG2nPjxpRmRbRXjb/hGcz1zZ2GHQNtnphiwk1q2h0LSHB PQ== 
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>
 <20181010145330.63e183d8@computer>
Message-ID: <11222d94-037d-b88a-846a-24f08ee334ef@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181010145330.63e183d8@computer>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9041 signatures=668706
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=458
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1810100153
Date: Wed, 10 Oct 2018 08:46:05 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com,
        =?UTF-8?Q?Hanno_B=c3=b6ck?=
 <hanno@hboeck.de>

On 10/10/18 05:53 AM, Hanno Böck wrote:
> Nautilus is trying to solve this by sandboxing the thumbnailers.
> However this depends on bubblewrap and is currently fail-open, i.e. if
> bubblewrap is not available it will not disable the thumbnailing, it
> will just not sandbox it. In practice this means it's often not
> sandboxed. I doubt this will change any time soon.

And bubblewrap is very specific to running on a Linux kernel, so users
of GNOME on top of other kernels are also left unprotected by it.

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
