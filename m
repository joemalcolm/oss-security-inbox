X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1932" "Monday" "10" "September" "2018" "21:07:17" "+0200" "Solar Designer" "solar@openwall.com" "<20180910190717.GA29060@openwall.com>" "59" "Re: [oss-security] [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification" nil nil nil "9" "2018091019:07:17" "[oss-security] [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification" (number mark "U       solar@openwa Sep 10   59/1932  " thread-indent "\"Re: [oss-security] [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification\"\n") "<CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>" ("<CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19551 invoked by uid 550); 10 Sep 2018 19:08:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18424 invoked from network); 10 Sep 2018 19:08:02 -0000
Date: Mon, 10 Sep 2018 21:07:17 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: The Apache Security Team <security@apache.org>
Message-ID: <20180910190717.GA29060@openwall.com>
References: <CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification

--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Christopher,

On Mon, Sep 10, 2018 at 02:40:05PM -0400, Christopher Shannon wrote:
> Please check the following document and see if you're affected by the issue.
> 
> http://activemq.apache.org/security-advisories.data/CVE-2018-11775-announcement.txt

Thank you for bringing this to oss-security.  However, please be aware
that including essential information only by reference is against list
content guidelines here:

https://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

which include:

"At least the most essential part of your message (e.g., vulnerability
detail and/or exploit) should be directly included in the message itself
(and in plain text), rather than only included by reference to an
external resource.  Posting links to relevant external resources as well
is acceptable, but posting only links is not.  Your message should
remain valuable even with all of the external resources gone."

To correct this, I've attached the entire text file from the URL above,
with the typo corrected as you mentioned in your follow-up message.

Alexander

--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=utf8
Content-Disposition: attachment; filename="CVE-2018-11775-announcement.txt"
Content-Transfer-Encoding: 8bit


CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache ActiveMQ 5.0.0 - 5.15.5

Description:

TLS hostname verification when using the Apache ActiveMQ Client was missing which could make the client vulnerable to a MITM attack between a Java application using the ActiveMQ client and the ActiveMQ server. This is now enabled by default.

Mitigation:

Upgrade to Apache ActiveMQ 5.15.6

Credit:
This issue was discovered by Peter Stöckli (Alphabot Security)

--n8g4imXOkfNTN/H1--
