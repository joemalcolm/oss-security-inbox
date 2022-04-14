Received: (qmail 17991 invoked by uid 550); 14 Apr 2022 19:40:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5927 invoked from network); 14 Apr 2022 19:20:20 -0000
Message-ID: <4027574e-ba23-10c4-0f2a-364f05d38cb8@enst-bretagne.fr>
Date: Thu, 14 Apr 2022 21:20:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <9e4aa379-70ce-3bf9-1480-c36a1b9fa4e0@enst-bretagne.fr>
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
In-Reply-To: <9e4aa379-70ce-3bf9-1480-c36a1b9fa4e0@enst-bretagne.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Browser-mediated attacks on WebDriver servers

Hi,

 > * Selenium server/Grid CSRF vulnerability;
 > * Selenium server/Grid DNS-rebinding vulnerability.

I have tried requesting CVE IDs for those three times (first request was 
done in 2021-06-12) and failed so far.

All three attempts were rejected for the following reasons:

 > The Jenkins CNA is responsible for assigning CVE IDs to
 > vulnerabilities in this product. Please contact the Jenkins CNA
 > to get a CVE ID assigned to this issue.

However, as a far as I understand this not the case. Here is the scope 
of the Jenkins CNA [1]:

 > The Jenkins project is a CVE Numbers Authority (CNA) for Jenkins
 > and Jenkins plugins published by the Jenkins project (listed
 > on plugins.jenkins.io and/or hosted in the jenkinsci
 > GitHub organization). This means that the Jenkins project assigns
 > CVE IDs for vulnerabilities in these components.

A Selenium plugin [2,3] in indeed included in the list of Jenkins
plugins. This plugin includes [4] selenium-standalone-server but is
different from selenium-standalone-server [5] itself.

I asked the Jenkins CNA:

 > I have been redirected to you by MITRE concerning the allocation of
 > CVE IDs for several vulnerabilities in Selenium standalone server /
 > Selenium Grid [...]
 >
 > I believe this is a mistake as I do not see any clue indicating
 > that Jenkins CNA might be responsible for assigning CVE IDs
 > to vulnerabilities in this product. Could you confirm me that this
 > is an error by MITRE ?

Here is the answer from the Jenkins CNA:

 > You are correct: Selenium is not in the scope of the Jenkins CNA.
 > That said, we assigned CVE IDs in the past for Jenkins plugins
 > integrating Jenkins and Selenium in some way (CVE-2021-21672,
 > CVE-2020-2196). Those are in our scope. Perhaps this is the source
 > of the confusion?

In my third CVE request attempt, I explicitly stated:

 > [Additional Information]
 > This was previously reported and denied with the following reason:
 >
 > > The Jenkins CNA is responsible for assigning CVE IDs to
 > > vulnerabilities in this product. Please contact the Jenkins CNA to
 > > get a CVE ID assigned to this issue.
 >
 > I asked Jenkins CNA about this and they denied being responsible
 > for Selenium itself :
 >
 > > You are correct: Selenium is not in the scope of the Jenkins CNA.
 > > That said, we assigned CVE IDs in the past for Jenkins plugins
 > > integrating Jenkins and Selenium in some way (CVE-2021-21672,
 > > CVE-2020-2196). Those are in our scope. Perhaps this is the
 > > source of the confusion?

However, the request is still rejected for the same reason.

Any idea how to proceed from there?

[1] https://www.jenkins.io/security/cna/
[2] https://plugins.jenkins.io/selenium/
[3] https://github.com/jenkinsci/selenium-plugin
[4] https://github.com/jenkinsci/selenium-plugin/blob/master/pom.xml
[5] 
https://github.com/SeleniumHQ/selenium/tree/trunk/java/src/org/openqa/selenium/grid

Gabriel
