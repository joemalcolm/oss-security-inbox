X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["349" "Friday" "15" "June" "2018" "12:23:23" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<d06db3bb-d353-7b66-b627-a091acd2ceb3@oracle.com>" "9" "Re: [oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak" "^Cc:" nil nil "6" "2018061519:23:23" "[oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak" (number mark "        alan.coopers Jun 15    9/349   " thread-indent "\"Re: [oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak\"\n") "<cig332r2l8rtee.fsf@u44850075a5a8574dc8a1.ant.amazon.com>" ("<cig332r2l8rtee.fsf@u44850075a5a8574dc8a1.ant.amazon.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21676 invoked by uid 550); 15 Jun 2018 19:24:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21650 invoked from network); 15 Jun 2018 19:24:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2017-10-26;
 bh=huvDMv8+HfVn7Mje1raNwwtIajvoUEUkMYZts73Y/2w=;
 b=kjEfkYSw53amTLjxpyTsdDrePAxP76vzWJVX0VUuJjetyO5M1U6tTUlABoTQtnqrcMaj
 vvDK/V3V8OBpPaEO2D2LhGTcFfPjnJmZZfRrjBelT5L59PVo7M6iephXR4GlAUL4ePds
 OSUbIEnHimDE630av6x2ziSVMuJrKZepVQc7hW4B3wU+vnxUHvJ00VICS43djOd57dUv
 wnvnG8TUwcNSifupzwJKoLcPni25sIEBapL7t3fxlt92t4sVHyPHXyAHwD4eacKHiYAL
 LbtQxXRqLRsFkYjg6TBPXXQWISnQsYa44nF2/Ys5KQ6+wLZH/ZeW/PkR3fzgWJjOK10E Rw== 
References: <cig332r2l8rtee.fsf@u44850075a5a8574dc8a1.ant.amazon.com>
Message-ID: <d06db3bb-d353-7b66-b627-a091acd2ceb3@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <cig332r2l8rtee.fsf@u44850075a5a8574dc8a1.ant.amazon.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8925 signatures=668702
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=627
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1805220000 definitions=main-1806150206
Cc: thomas.prescher@cyberus-technology.de, jsteckli@amazon.de
Date: Fri, 15 Jun 2018 12:23:23 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-3665 Lazy FPU Context Switching
 Information Leak
To: oss-security@lists.openwall.com, Anthony Liguori <aliguori@amazon.com>

On 06/15/18 07:55 AM, Anthony Liguori wrote:
> Working exploit code that leaks one XMM register for Linux and FreeBSD is 
> attached to this email.

Did the attachment get lost on the way to the list?  I didn't see any.

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
