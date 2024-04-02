Received: (qmail 8096 invoked by uid 550); 2 Apr 2024 23:39:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28055 invoked from network); 2 Apr 2024 22:39:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=x17.eu; s=20140827;
	t=1712097547; bh=cXQZF6Ek8NNUzLm9xGT10Czyg67kL1U9OfcVmVNP5fA=;
	h=Date:From:Subject:To;
	b=hklxP58DlbyYQfKOcsvJR8HXW/+HUBvfS45ehP0jRrVJIvZbvi6gdXRIsgOkS76zH
	 Al087x2Bs3tpM1NkjQsNEmAuxlbJbYNJ3sNQ9ZWp5HM6aiUvYlkpdaD2Kq4z2u36PB
	 B/BVWP8BKNf3cw+xoBna+Q5yGb9c7RttgVEbAKEA=
Message-ID: <10e79996-d2e7-4dae-bc0c-59b8850201e6@x17.eu>
Date: Wed, 3 Apr 2024 00:39:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: de-DE, en-CA
From: daniel <sd@x17.eu>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-1597: PostgreSQL pgjdbc: SQL injection in non-default
 configuration

###
##	Summary
###
On the 21st of February 2024 a security advisory for the JDBC driver of 
PosgreSQL was published [1].
Which states: "SQL injection is possible when using the non-default 
connection property preferQueryMode=simple in combination with 
application code that has a vulnerable SQL that negates a parameter value."
Corresponding fixes were published at the 19th of February 2024.

###
##	Severity
###
The severity is critical with a CVSS score of 10 but several conditions 
must be met for successful exploitation.

Quote from [1]:
To exploit this behavior the following additional conditions must be met:

     A placeholder for a numeric value must be immediately preceded by a 
minus (i.e. -)
     There must be a second placeholder for a string value after the 
first placeholder on the same line.
     Both parameters must be user controlled.

###
##	Example from [1]
###
PreparedStatement stmt = conn.prepareStatement("SELECT -?, ?");
stmt.setInt(1, -1);
stmt.setString(2, "\nWHERE false --");
ResultSet rs = stmt.executeQuery();

The resulting SQL when operating in simple query mode would be:

SELECT --1,'
WHERE false --'

and the result after the fix applied:

SELECT -('-1'::int4), ('
WHERE false --')

###
##	Affected products and versions
###
pgJDBC [1]

     All versions prior to 42.7.2
     All versions prior to 42.6.1
     All versions prior to 42.5.5
     All versions prior to 42.4.4
     All versions prior to 42.3.9
     All versions prior to 42.2.28
     All versions prior to 42.2.28.jre7

EnterpriseDB pgJDBC [2]

     All versions prior to 42.5.4.2

and likely other products which bundle the above products like Atlassian 
Bamboo Data Center and Server [3] or IBM Maximo Application Suite[4].

###
##	Credit
###
Paul Gerste [5] has been credited as the reporter of the vulnerability [1].


References:
[1] https://github.com/advisories/GHSA-24rp-q3w6-vc56
[2] https://www.enterprisedb.com/docs/security/assessments/cve-2024-1597/
[3] https://jira.atlassian.com/browse/BAM-25716
[4] 
https://www.ibm.com/support/pages/security-bulletin-ibm-maximo-application-suite-uses-postgresql-4238jar-which-vulnerable-cve-2024-1597
[5] https://github.com/paul-gerste-sonarsource
