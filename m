X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1438" "Saturday" "23" "July" "2016" "16:36:58" "+0200" "Walter" "dpankraz1@web.de" "<ec9146bf-2667-749a-8250-6dd28b319c8b@web.de>" "44" "[oss-security] XSS vulnerability in ILIAS before version 5.1.3, 5.0.11 and 4.4.14" nil nil nil "7" "2016072314:36:58" "[oss-security] XSS vulnerability in ILIAS before version 5.1.3, 5.0.11 and 4.4.14" (number mark "U       dpankraz1@we Jul 23   44/1438  " thread-indent "\"[oss-security] XSS vulnerability in ILIAS before version 5.1.3, 5.0.11 and 4.4.14\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16046 invoked by uid 550); 23 Jul 2016 14:44:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12266 invoked from network); 23 Jul 2016 14:37:04 -0000
From: Walter <dpankraz1@web.de>
To: oss-security@lists.openwall.com
Message-ID: <ec9146bf-2667-749a-8250-6dd28b319c8b@web.de>
Date: Sat, 23 Jul 2016 16:36:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------048ACC70E56471BD7027CBE6"
X-Provags-ID: V03:K0:nZNdaL+CuuZC0S7MbLGI/hs2GhEzp6mCfJlCgVAi67UYbZZ9vG3
 sjZEmrQCcvqsGtxpZ1XvgX6FRy2nG3/JuPecKGCggeh9vinu82L2HCEYH4ZeLLzldDoUX8F
 S17pXsO4I99sEPVxKQfXuDsTr/CoopL/9s6yTYuyfEPnakU7YbQZh2gv3MitafYUTzHANYR
 hlA3/YH10ezZtWMPnHD2A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:fSct9oNynsI=:BkTxY8DsmdkSk17IiyfV+g
 rZCp0HT62faKOCGh+kjeLfQqbzqfzugxJaTbXBFUuQKoDkXaIYGJLSctenDHxi/COfIvLJet6
 qNKUAvrxw94z9CpnudnRgLb6qyRvjt0sadaAq0+Fg2e0IjWzF+wyDbgEAvZpFRNStyxDVYbAQ
 VAnkeKizTqP/M/9EZ1uxJSq+DnhWrGUaLTtYlk6sSOKAFCl6x4giuQxdWlJ9YDnzSdw3nlrYU
 ljWyDZPA1KoDCmaIroZG9tTKnUp4UfLWlxT+zAUCLw/nFCP2drp0llkZgFTPc5mKX61RMlpZj
 6lvi6FP1ivKvq834mePMQ0txSJQ43cl/qQ8KHuENfMqNLQ+XDWn/jC53T43BFONxfMWLdt9zH
 /bmkEieDCv4oFLUeMBJACN5+ZGSaMYkBpYXbYqmESkXwskGxRiytfCzfNRDICV/oKz3bz+V1b
 nsZukOh6HqPmJbzJUw8MHY5Q5kjOqv9nkyS8TEw1Jb2cuEAlI/5BwRPj5REvcoGae97YdnTDV
 Z0uekcmYMRR3XH6qyigO7SRFL7Wp6rmp3xw0g79LAskInayt1QcKE6z0DFG9UmxXwUs5UhLPl
 oz3NPYpIeYpNkMDa5Xu4I3ch6BIXg/qphzQp1BSOsxppTIz/lesWfij1F/fJ4KH6gfFHPArtQ
 8zaVA+J8yTpyyw2awe9z1g4Mxp1hUz3uaFFu8BpXpvCUpiZLMR8KZ7UIfN1Hb4Z7updo6ovIj
 C+riYhpWKahOosUzj7Fb63oTczGBIyJMWuKVpLFG2/Fg1bp8rft+hTiH82ZwiwaoCuy1opmQc
 6nfCjwo
Subject: [oss-security] XSS vulnerability in ILIAS before version 5.1.3, 5.0.11 and 4.4.14

--------------048ACC70E56471BD7027CBE6
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

A cross-site scripting vulnerability in ILIAS <http://www.ilias.de>
(Integrated Learning, Information and Work Cooperation System) version
5.1.2 has been found by Quadas.

Impact:

    This remotely accessible vulnerability is always reproducible and
    possibly works in any version before 5.1.3, 5.0.11 and 4.4.14.
    An attacker can supply java script code in the filename of an
    uploaded file, which will be executed in browsers of other users. It
    is not
    required to open this file. Browsing into the folder will trigger
    the code execution.

Exploit:

  * log in
  * open a folder you can upload a file to
  * select the "upload files"-dialog
  * drop a random file in
  * write code (e.g. JavaScript) in the filename
  * upload file

    From this moment the code will run on any user's web browser who
    opens the folder you uploaded the file in.


Patch:

    Vulnerability was fixed with version 5.1.3, 5.0.11 and 4.4.14.
    Ticket-ID was 0017977 but unfortunately the ticket was set on
    private view status. Link to the ticket
    <http://www.ilias.de/mantis/view.php?id=3D17977> (account is required)
    Surprisingly there are no commits on GitHub
    <https://github.com/ILIAS-eLearning/ILIAS>.


Can a CVE-ID be assigned please?

--------------048ACC70E56471BD7027CBE6--
