X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["631" "Tuesday" "8" "September" "2020" "08:07:57" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<d5e3c4bd-b157-d9bd-5114-6c683be5a338@oracle.com>" "14" "Re: [oss-security] Re: [FD] libcroco multiple vulnerabilities" "^Cc:" nil nil "9" "2020090815:07:57" "[oss-security] Re: [FD] libcroco multiple vulnerabilities" (number mark "        alan.coopers Sep  8   14/631   " thread-indent "\"Re: [oss-security] Re: [FD] libcroco multiple vulnerabilities\"\n") "<3c159080-5b82-0a64-8fb3-dc4864688d2a@oracle.com>" ("<50f7b717.f5b.15c809f2452.Coremail.qflb.wu@dbappsecurity.com.cn>" "<8490d99d-bb3f-a827-4c22-74a0d22244a4@oracle.com>" "<3c159080-5b82-0a64-8fb3-dc4864688d2a@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] Re: [FD] libcroco multiple vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7916 invoked by uid 550); 8 Sep 2020 15:08:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7895 invoked from network); 8 Sep 2020 15:08:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : from : to :
 cc : reply-to : references : message-id : date : mime-version :
 in-reply-to : content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=n7FcvYF2yVCcw7HmSwmLBcDhSKRUilZmmuqm2Dcec0c=;
 b=o3Fs09KZ4AVlRS2IYhRZmEZ+bRXdzqsm4ksuhUhVrq0dyGoFBwBxFO9J0f8CK7R0HuSz
 4xllIV+HATgfwnb4ofaE/IuoHglPIqtxeNjx/yh1tHaTKBpN/j7kyO6ICYPpE1ebQpLt
 /i0a3hprQxhUlxzx42/4KCbOAnQGWF9F7VsvbvHGo0hgBtIRXx6MyVjg257LycFA5SL6
 v13GlvXf5A8/7ayWeLtOKbHjzlYq13/yHi4Kup76WQAiBbBVZqwPz077cgho3Lobg7uO
 lZ9k1GLxlUY7qsoK/5zKhY0D6YqPE/oiLiOPKBdZ9DY8GO7wpcCx0lX2KlA2MvyMMUMC Ew== 
References: <50f7b717.f5b.15c809f2452.Coremail.qflb.wu@dbappsecurity.com.cn>
 <8490d99d-bb3f-a827-4c22-74a0d22244a4@oracle.com>
 <3c159080-5b82-0a64-8fb3-dc4864688d2a@oracle.com>
Message-ID: <d5e3c4bd-b157-d9bd-5114-6c683be5a338@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <3c159080-5b82-0a64-8fb3-dc4864688d2a@oracle.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9737 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 suspectscore=0
 spamscore=0 mlxlogscore=999 adultscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009080143
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9738 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 mlxscore=0 bulkscore=0 suspectscore=0 spamscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 clxscore=1034
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009080143
Cc: oss-security@lists.openwall.com
Date: Tue, 8 Sep 2020 08:07:57 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [FD] libcroco multiple vulnerabilities
To: "qflb.wu" <qflb.wu@dbappsecurity.com.cn>

On 8/13/20 10:57 AM, Alan Coopersmith wrote:
> Upstream closed these bugs as WONTFIX today since they have ended
> maintenance of the standalone libcroco, as discussed in the comments on
> https://gitlab.gnome.org/Archive/libcroco/-/issues/8
> (which is a different security fix, for CVE-2020-12825).

Distro maintainers should take note that GNU gettext also has an
embedded copy of libcroco sources:

https://git.savannah.gnu.org/gitweb/?p=gettext.git;a=tree;f=libtextstyle/gnulib-local/lib/libcroco

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
