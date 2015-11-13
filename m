X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1063" "Friday" "13" "November" "2015" "08:21:18" "-0600" "Mark Felder" "feld@feld.me" "<1447424478.3340657.438908521.6EB6C975@webmail.messagingengine.com>" "34" "Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Cc:" nil nil "11" "2015111314:21:18" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        feld@feld.me Nov 13   34/1063  " thread-indent "\"Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<20151112232245.GA1213@sentinelchicken.org>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>" "<56445609.9050301@gmail.com>" "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>" "<20151112232245.GA1213@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22276 invoked by uid 550); 13 Nov 2015 14:21:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22258 invoked from network); 13 Nov 2015 14:21:30 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=/JWAQQSk+bbV6fDF/Hi1hSXxeJ0=; b=pmglYa
	Gby6VtKoQLgiNX2Oz8txLPtBmSlRAx6GNP+IM4GOC4sI7qwFfnu2HTDmVh1dvpk5
	mEI2QXH6xawgU5s0DI5fbq5jlVgdTRRcxuiNf9iuWf5KW86UgawoQLTWXXZ+FsTC
	gW1IOWBqsFznJykRokMd7z2gwkWiqC9l3Wc7M=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=/JWAQQSk+bbV6fD
	F/Hi1hSXxeJ0=; b=AmawDPLS8EyEvf+d+pgAEmPELYFls+wJEMMTqj9aVA0x5lu
	kBHKBjCggk8MfZo5Tp4CjrHfHwhtq7FBrY6mnt5BG5hfRbeN2dzUtozge3yW6M86
	JpHORshjG/Hd2jzBkLRwSkSQmvoFzj+WHlmOYK6dGuSDR7PzfIVLm6K24n9Y=
Message-Id: <1447424478.3340657.438908521.6EB6C975@webmail.messagingengine.com>
X-Sasl-Enc: mzJo7U6Yv8fQRE/jSgU9uk3dkRqc6ZKExbpHfPQ/nxna 1447424478
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-37ba1837
In-Reply-To: <20151112232245.GA1213@sentinelchicken.org>
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com>
 <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
 <20151111160641.GQ1213@sentinelchicken.org> <56445609.9050301@gmail.com>
 <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>
 <20151112232245.GA1213@sentinelchicken.org>
Cc: cve-assign@mitre.org
Date: Fri, 13 Nov 2015 08:21:18 -0600
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: Assign CVE for common-collections remote
 code execution on deserialisation flaw
To: oss-security@lists.openwall.com



On Thu, Nov 12, 2015, at 17:22, Tim wrote:
> 
> > The currently proposed "fix"[1] is to disable functionality that is
> > being used. This will break applications that need them.
> > 
> > [1] https://issues.apache.org/jira/browse/COLLECTIONS-580
> 
> 
> I just read through that thread and I did not see anyone indicating
> that the fix breaks applications.  Only speculation.  Perhaps you
> meant to link us somewhere else?
> 
> tim

The patch[1] attached to that JIRA report would disable serialization by
default. Any application that needs it would require a code change to
re-enable it. This would break existing applications.

+                    "Serialization and deserialization of
InvokerTransformer are disabled for security reasons. " +
+                    "To re-enable it set, system property '" +
DESERIALIZE + "' to 'true'." +
+                    "See
https://issues.apache.org/jira/browse/COLLECTIONS-580 for details.");


[1]
https://issues.apache.org/jira/secure/attachment/12771520/COLLECTIONS-580.patch

-- 
  Mark Felder
  feld@feld.me
