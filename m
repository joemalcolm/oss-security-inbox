X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4638" "Thursday" "29" "September" "2016" "11:50:07" "-0400" "Mike Kienenberger" "mkienenb@gmail.com" "<CAM1yOjaDZ_cFH4zYxFH4P=undqA7nbHcr3HQydPh7W3Ht5HdYg@mail.gmail.com>" "105" "[oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 2.0.2 released" nil nil nil "9" "2016092915:50:07" "[oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 2.0.2 released" (number mark "U       mkienenb@gma Sep 29  105/4638  " thread-indent "\"[oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 2.0.2 released\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27956 invoked by uid 550); 29 Sep 2016 16:26:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24455 invoked from network); 29 Sep 2016 15:50:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=DiISXnbIt1laCW1mNmJTu7pvsoHSVC1zVzhmn1Xe5yw=;
        b=Yoyy92X6xJWaOzDT85W9ixM9bj8XwgGXaYkoC0CnMBE6disrnaxaqZdL9uxK2nelvq
         kpPEXB42LJGIgvHFCBRcV5GLKu/NLeeeoh3Og1NpO3c27rjbER5vQTwo/VMLeQtlTHSy
         CKeKpeMNJ9GM0SkTO4AEgtNjQuRA21QZUps5nW941XXsXyybM/Bhj536Z/GoIqZPytPy
         IcZNLpVakNFBeVplBvn+f0rB6Ryb6hIp+vYaMYtCd1o1G/eQ5S0ey9Fn9WS1ds50n1Xs
         3g8+PPaxjTnU6KcXmCWEyXgnmYPhtzV4flZXO1F/VO/VLVP+iDpR1qmgyn1QhsC7j2+R
         YaCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=DiISXnbIt1laCW1mNmJTu7pvsoHSVC1zVzhmn1Xe5yw=;
        b=QMMHTJ6Ln3S7/Itm4YlqQRlNYTJBfG6MNwf2f+I39OKyp/thI/pHbLW4UPD+5O95lX
         9RYEmeRmiSE2jjWLN1FXx6T0knBcpxtg2KaTCp6+9UUl6R6uhpzCatLsyl4MdRNO2a/E
         SU4r9NqPxWabJ8nuzlR+JU05bp44XypqZYRI2q9rMnrU87q4TCc9AIh7CFFSdpeVMQ7U
         myqsLzCCCChqyaSd+RK7D4cYeVWGbngZL+KR4sWrTacwUzYKGp2KT1+Lo0bk7nkVgZef
         j21Kb5TDjR2fT13O6Zm9VsTPQXsqwIJtw4/v2zVcyXcaL2Ur+pVFRKxA1s1rWBtLBmHB
         scPA==
X-Gm-Message-State: AA6/9RnVB6RlggZHwUjT6l7fKhzfxhLjr32aiaKyz3guTvPOj7Ktel67Uzp1JJK267JUtU5e4bLTAP0ZRYhDdg==
X-Received: by 10.202.51.8 with SMTP id z8mr1972636oiz.76.1475164228478; Thu,
 29 Sep 2016 08:50:28 -0700 (PDT)
MIME-Version: 1.0
From: Mike Kienenberger <mkienenb@gmail.com>
Date: Thu, 29 Sep 2016 11:50:07 -0400
Message-ID: <CAM1yOjaDZ_cFH4zYxFH4P=undqA7nbHcr3HQydPh7W3Ht5HdYg@mail.gmail.com>
To: announce@myfaces.apache.org, MyFaces Development <dev@myfaces.apache.org>, 
	MyFaces Discussion <users@myfaces.apache.org>
Cc: "security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 2.0.2 released

The Apache MyFaces team is pleased to announce the release of Apache
MyFaces Trinidad 2.0.2.

MyFaces Trinidad is a feature-rich renderkit for JavaServer(tm) Faces
that provides an extendibles framework and extensive skinning support.
This version is designed to be used with the JSF 2.0 specification and
works with either Mojarra or MyFaces.

CVE-2016-5019:
Trinidad=E2=80=99s CoreResponseStateManager both reads and writes view state
strings using
ObjectInputStream/ObjectOutputStream directly.  By doing so, Trinidad
bypasses the
view state security features provided by the JSF implementations - ie. the =
view
state is not encrypted and is not MAC=E2=80=99ed.  Trinidad=E2=80=99s
CoreResponseStateManager will
blindly deserialize untrusted view state strings, which makes Trinidad-based
applications vulnerable to deserialization attacks.

Apache MyFaces Trinidad is available in both binary and source
distributions, and there are examples available as well:

    * http://myfaces.apache.org/trinidad/download.html

Apache MyFaces Trinidad is available in the central Maven repository
under Group ID "org.apache.myfaces.trinidad"

Release Notes - MyFaces Trinidad - Version 2.0.2

Bug
    [TRINIDAD-2542] - CVE-2016-5019: MyFaces Trinidad view state
deserialization security vulnerability

    [TRINIDAD-2218] - Need an ability for the WindowManager
implementation to be executed before all Configurators and filters and
to complete teh response
    [TRINIDAD-2224] - Client DateTimeConverter _fix2DYear does not
handle th_TH locale
    [TRINIDAD-2230] - adjustments to the UIXComponentBase
subscribeToEvent and unsubscribeFromEvent implementation
    [TRINIDAD-2233] - x-frame-options header not working in trinidad
    [TRINIDAD-2245] - ForEach tag throws ArrayIndexOfBoundsException
when the end attribute is same as the size of the List
    [TRINIDAD-2252] -
ViewDeclarationLanguageFactoryImpl$ChangeApplyingVDLWrapper does not
override non-abstract retargetMethodExpressions() causing composite
component actions not to fire
    [TRINIDAD-2260] - tr:inputListOfValues - no ReturnEvent is fired
when using facelets
    [TRINIDAD-2262] - UIXComponentBase calls setInView(false) before
the component is actually removed from tree
    [TRINIDAD-2263] - StateManagerImp.saveView should not check
current request token
    [TRINIDAD-2285] - avoid exceptions in design time for agent rules
    [TRINIDAD-2286] - alias wrongly specified in base-desktop.css
    [TRINIDAD-2289] - function _pprControlCapture() causes an error in
IE8 when it tries to focus on a PPR'd element
    [TRINIDAD-2299] - f:convertnumber throws error when the number
input by user has leading or trailing grouping separator char
    [TRINIDAD-2301] - avoid exceptions in design time when wrong style
sheet name is specified in trinidad-skins.xml
    [TRINIDAD-2303] - State saving skips facets (component resources).
    [TRINIDAD-2309] - perf: change the concurrenthashmap to arraymap
and fix the golden files
    [TRINIDAD-2327] - update RenderingContext.getIcon() documentation
    [TRINIDAD-2329] - remove acc datatable=3D0 from non data tables
    [TRINIDAD-2340] - LocaleElementsResourceLoader init dependency on
request path
    [TRINIDAD-2348] - HeadRenderer renders meta tags in wrong order for IE
    [TRINIDAD-2349] - TreeRenderer renders duplicate IDs
    [TRINIDAD-2393] - GlobalConfiguratorImpl will not always clean up resou=
rces
    [TRINIDAD-2408] - TrPage._getTextContent is not working in IE10
    [TRINIDAD-2525] - IE 11 - Unsupported JavaScript methods are used
in Trinidad

Improvement

    [TRINIDAD-2172] - pseudo classes missing from CSSGenerationUtils
    [TRINIDAD-2186] - Clirr runner tests should work off last revision
rather then a fixed label
    [TRINIDAD-2226] - Provide mechanism to reload skin definitions
from trinidad-skins.xml
    [TRINIDAD-2235] - Skinning: stable names for generated style sheets
    [TRINIDAD-2248] - Change component templating scheme to generate
superclasses of templated components rather than the templated
components themselves
    [TRINIDAD-2253] - Ability to synchronize UI view size with model cache =
size`
    [TRINIDAD-2292] - Update Clirr Runner tests to check against Trinidad 2=
.0.0
    [TRINIDAD-2330] - Add support for base64 encoded images in skin files.
    [TRINIDAD-2391] - Enhancements to allow for custom FileUpload code
    [TRINIDAD-2392] - Ability to control skin and compression programatical=
ly
    [TRINIDAD-2394] - LabeledFacesMessage is not appropriately serializable

New Feature

    [TRINIDAD-2234] - Pregeneration of skin style sheets

regards,

Mike Kienenberger
