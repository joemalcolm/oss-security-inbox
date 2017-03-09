X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2454" "Thursday" "9" "March" "2017" "17:36:39" "+0000" "Seth Art" "sart@openskycorp.com" "<CY4PR12MB1141518BEAB7E0FAD34D0457DA210@CY4PR12MB1141.namprd12.prod.outlook.com>" "65" "[oss-security] CVE Request: Joomla! FLEXIcontent - Incorrect Authorization (Authorization Bypass)" nil nil nil "3" "2017030917:36:39" "[oss-security] CVE Request: Joomla! FLEXIcontent - Incorrect Authorization (Authorization Bypass)" (number mark "U       sart@opensky Mar  9   65/2454  " thread-indent "\"[oss-security] CVE Request: Joomla! FLEXIcontent - Incorrect Authorization (Authorization Bypass)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29849 invoked by uid 550); 9 Mar 2017 18:09:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7279 invoked from network); 9 Mar 2017 17:36:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openskycorp.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=1SGYL6py/Y6hZ5SrNv+ccyTYiZBZK0qoZJutVQq0Bq4=;
 b=AOST0lkMlJy1YFFq+Ax+t6McnPjKmF7oBuuzWXiWEflSuhwXWRSF6PpnkAo5aT5saQo9N9wL/IXk0frneYpu7cMu6yXJCsYFlkPdoVhmhvVz22z+zRX4LRGT2XGFuDaf+6B5+asYbXdukEXbMOauJwPXdPgfGTtRUHzMh6Q3ccU=
From: Seth Art <sart@openskycorp.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE Request: Joomla! FLEXIcontent - Incorrect Authorization
 (Authorization Bypass)
Thread-Index: AdKY+iXNd4NkZuWQQPGLBcAW5LnXOQ==
Date: Thu, 9 Mar 2017 17:36:39 +0000
Message-ID: <CY4PR12MB1141518BEAB7E0FAD34D0457DA210@CY4PR12MB1141.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=openskycorp.com;
x-originating-ip: [50.207.151.130]
x-ms-office365-filtering-correlation-id: 89b08b98-430a-4d4e-d2cd-08d46712d827
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:CY4PR12MB1144;
x-microsoft-exchange-diagnostics: 1;CY4PR12MB1144;7:R9NCKs2+seknk1DiH7G1qdKoAr1bcg3bxAfgINNWr4o5cnp6zq0midPwfm8bNQAT/Z4QWeQjDdvdpt+mrNnYWL8hqsQ6sttO6QP4yF1sRwt9iIn0zWdZ6IL+bT3F9PZC9fs4n6I40ASa6vPRqtpsUeb7sdayIuPa/YY1a65ZBlhWeBe9S6EWNq08dICh4huV4/Pv0ciLqeR9zgoarrPdRm+BbHo4+owLhxkliBKmV5E9IXuwcg35v5YiwkeCqK2PMCYqUIpsSqph9rzgdbZtx0EFhY8yj84GfWSnjyFIDbqiuT/+M9zhr3hCLh+wMPfURrAHAXiMX1iVgCEOqXmuPA==
x-microsoft-antispam-prvs: <CY4PR12MB114490F32B9762D9376B5634DA210@CY4PR12MB1144.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(192374486261705);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123555025)(20161123562025)(20161123558025)(20161123560025)(20161123564025)(6072148);SRVR:CY4PR12MB1144;BCL:0;PCL:0;RULEID:;SRVR:CY4PR12MB1144;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(6009001)(39410400002)(39450400003)(39840400002)(113484002)(377424004)(50944005)(38730400002)(110136004)(25786008)(5640700003)(99286003)(16799955002)(966004)(33656002)(55016002)(8676002)(6306002)(54356999)(6916009)(8936002)(2900100001)(6436002)(2906002)(77096006)(81166006)(6506006)(305945005)(2501003)(7736002)(50986999)(66066001)(7696004)(5660300001)(74316002)(3660700001)(122556002)(102836003)(53936002)(9686003)(4001150100001)(86362001)(3846002)(189998001)(2351001)(3280700002)(6116002);DIR:OUT;SFP:1101;SCL:1;SRVR:CY4PR12MB1144;H:CY4PR12MB1141.namprd12.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: openskycorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2017 17:36:39.7551
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cca69193-48b7-4854-87bb-968ac6251799
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1144
Subject: [oss-security] CVE Request: Joomla! FLEXIcontent - Incorrect Authorization
 (Authorization Bypass)

-----------
Vendor:
-----------
FLEXIcontent (http://www.flexicontent.org) is an advanced content managemen=
t system developed to greatly enhance the native content management of Joom=
la!

-----------------------------------------
Affected Products/Versions:
-----------------------------------------
flexicontent-cck-3.0.13
flexicontent-cck-3.1.0-rc
Note: Previous versions may be affected

-----------------
Description:
-----------------
Title: Joomla! FLEXIcontent - Incorrect Authorization (Authorization Bypass)
CWE-863: Incorrect Authorization (https://cwe.mitre.org/data/definitions/86=
3.html)
Detailed write-up: http://www.openskycorp.com/resource-center/blog/joomla-f=
lexicontent-incorrect-authorization/
Researcher: Seth Art

CWE-863 Description: "The software performs an authorization check when an =
actor attempts to access a resource or perform an action, but it does not c=
orrectly perform the check. This allows attackers to bypass intended access=
 restrictions."

The FLEXIcontent plugin uses a query string parameter, task, which specifie=
s the action to perform on a FLEXIcontent article.  If an unauthenticated a=
ctor provides any value other than edit or a blank value to the task parame=
ter, the actor is able to view the restricted FLEXIcontent article, regardl=
ess of the assigned permissions.  Articles are sequentially numbered, which=
 would allow an actor exploiting this vulnerability to gain read-only acces=
s to all FLEXIcontent articles by iterating through article identifiers.

---------------
POC:
---------------
http://host/index.php/content_page/#/#?task=3Dabcd
http://host/index.php/content_page/2/6?task=3Dfoo
http://host/index.php/content_page/2/7?task=3Dfoo
http://host/index.php?option=3Dcom_flexicontent&view=3Ditem&id=3D#&task=3Da=
bcd (if Search Engine Friendly URLs are disabled)

-------------
Solution:
-------------
Upgrade to flexicontent-cck-3.1.1 or greater

-----------------------------
Disclosure Timeline:
-----------------------------
2016-09-28: Notified FLEXIcontent author of vulnerability.
2016-09-28: FLEXIcontent author acknowledges vulnerability and confirms it =
will be fixed.
2016-10-31: FLEXIcontent v3.1.1 is released and silently fixes vulnerabilit=
y.
2016-11-30: Researcher tests v3.1.1 and determines vulnerability has been f=
ixed.
2016-01-31: Researcher asks the author to mention the security issue in rel=
ease notes (no response).
2017-03-06: Public disclosure

