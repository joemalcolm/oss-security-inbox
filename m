X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1794" "Friday" "13" "November" "2015" "09:14:26" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<56459BE2.6060107@gmail.com>" "40" "Re: [oss-security] Re: Assign CVE for common-collections remote code execution on deserialisation flaw" nil nil nil "11" "2015111308:14:26" "[oss-security] Re: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "U       gsunde.orang Nov 13   40/1794  " thread-indent "\"Re: [oss-security] Re: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<1466254601.10395170.1447390256651.JavaMail.zimbra@redhat.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<1466254601.10395170.1447390256651.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13623 invoked by uid 550); 13 Nov 2015 08:14:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13599 invoked from network); 13 Nov 2015 08:14:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=huOsq7bx51APUil3AzEDP5PNKjfoX3QntK0Tfh4vVs4=;
        b=a0dRtRCMLwAbdtZz/LGhqPUyA/W2+nUEtm4kSoN0G8XvLj+afZDBY2H/RrlyUCX6Mq
         fBUuXRwKrz/s8He/cIC5EFlmQOmXxMficCwzKl6jn9v/dQOsN84Bj11E664qS7F5xpS6
         tEAjkddAojdOQqie89W8e7OuhGaGTfHIKAE7LmeHVFMIrLYW2313sE6sGHj9WZX78BIB
         NfbukKUXfumbkAlb+0VLPsUG3PRwn8ZpkMqjZVt7IsgGhUwTWibY6/qUSvTAQRfkL8AD
         kQl8qcO8PU+a8ooeauQwWjC9aXfVANCF8oYx7phBDFTiwWYR3avkVB6AQfXSKEyQuWlH
         oFlA==
X-Received: by 10.28.145.132 with SMTP id t126mr2011775wmd.31.1447402460765;
        Fri, 13 Nov 2015 00:14:20 -0800 (PST)
To: oss-security@lists.openwall.com
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <1466254601.10395170.1447390256651.JavaMail.zimbra@redhat.com>
From: Gsunde Orangen <gsunde.orangen@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56459BE2.6060107@gmail.com>
Date: Fri, 13 Nov 2015 09:14:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1466254601.10395170.1447390256651.JavaMail.zimbra@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: Assign CVE for common-collections remote code
 execution on deserialisation flaw

+1
Note that Daniel from Jenkins requested a CVE ID, too (for the Jenkins
Fix [1]. I propose to use the same ID here.
This is btw. the only critical bug (SECURITY-218) without a CVE-ID
included in latest Jenkins release [2].
(...and: kudos to the Jenkins team for acting so quickly and
professional; great work ;-)

Gsunde


[1] http://seclists.org/oss-sec/2015/q4/241
[2]
https://wiki.jenkins-ci.org/display/SECURITY/Jenkins+Security+Advisory+2015-11-11

On 2015-11-13 on 05:50 Jason Shepherd wrote:
> I think a precedent has been set with the Groovy issue [1] that we'd issue a CVE for the libraries that allow us to execute code during deserialization of their classes.
> 
> [1] CVE-2015-3253 
> 
> As Gsunde points out, it would make it a lot easier for everyone to refer to this issue if it had a CVE.
> 
> ----- Original Message -----
> From: "Jason Shepherd" <jshepher@redhat.com>
> To: oss-security@lists.openwall.com
> Sent: Monday, 9 November, 2015 10:36:20 AM
> Subject: Assign CVE for common-collections remote code execution on deserialisation flaw
> 
> Hello oss-esc,
> 
> It was found that a flaw in Apache commons-collections Java library allowed remote code execution when Deserialised with Java Object Serialization. Full details of the vulnerability can be found in this recent blog post, [1]. A proposed patch for 3.2.x branch has been submitted upstream, but no release has been made with the fix at the current time. The issue affects version 3.x, and 4.x of Apache common-collections, [2].
> 
>    [1] http://foxglovesecurity.com/2015/11/06/what-do-weblogic-websphere-jboss-jenkins-opennms-and-your-application-have-in-common-this-vulnerability/
>    [2] https://issues.apache.org/jira/browse/COLLECTIONS-580
> 
> Regards,
> Jason Shepherd
> Red Hat Product Security
> 

