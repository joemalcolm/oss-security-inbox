X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3939" "Thursday" "29" "September" "2016" "11:50:11" "-0400" "Mike Kienenberger" "mkienenb@gmail.com" "<CAM1yOjbkx_c4D4_HY3ovdFLDiRirWrnKa0OUwra=ZitrLbrSKw@mail.gmail.com>" "95" "[oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 1.2.15 released" nil nil nil "9" "2016092915:50:11" "[oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 1.2.15 released" (number mark "U       mkienenb@gma Sep 29   95/3939  " thread-indent "\"[oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 1.2.15 released\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26269 invoked by uid 550); 29 Sep 2016 16:25:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24492 invoked from network); 29 Sep 2016 15:50:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=3H3d+DrsSsZQg+SvWfOyVcVltmMxxSSiYAuBrIoKy40=;
        b=DIPXYnXSN+tFy9uM+L3KyKhL74RooAj8QjlIHroMNoYRQGEzou+HGrGk9vRQvagiAr
         GqNzKUSaEiDPW63GpEvrCOzBpOTsmVMea0qx/4bq/hXQ4mThLsP6II8oY6W06HAnuHae
         HIRXewZ/We5MJ5nvt4dYzKUENceaPovTaGIgkgB+lqHkriX88uMxCTmAvaE8gGjFK6M4
         qOdeU/eCxrJ9DuPsbtD/pSzoYW6zGPmmDoysMlmPJkkotK86Bu8LS6BsEGj4c9FexOVa
         IvaW7zwaKaNKK2mPuSe/D8j4BZwaWFLZSQZo/3j3x21lCtI8ouTMjaomvnRApH2c12UP
         CHrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=3H3d+DrsSsZQg+SvWfOyVcVltmMxxSSiYAuBrIoKy40=;
        b=cyQqaGKemOcE7YX8Uh8De3f4Hzfg0FQwSccPgENzb1AQSFY9234BffWss87i0qqcaD
         HocKEeK6qZR3foqsUm67QPZF9kyNZyV66M8y6F5sVW6way78PwkEUFvdnLw5s/b0Oc3C
         szd96IuP/P/nvTqIEJpsPVpDsdI80unmCJrdDSUWQtZ9P8SovYuv3JQN6R4XzjssHVZa
         ofPWPZzX4B2/GfDL2Dc303mSDHnxObRa5tCDrcuR01hWjxH3KMIGX/QRYwczWVvzp65j
         7pGHrSO3ueydfe5KEFO7eIRStV4QaDUhf0hxaY8E2iuGnopHMNLc6l+J30QbE/OJxYfg
         VR0Q==
X-Gm-Message-State: AA6/9Rnx4iXTqWjpJNH5dsbFeMX6dW1ud5+UjrsbKmOqXOQ5ziR5byeQy1S0L2Hm2f5xsCsNXm7RgWG7TozYQQ==
X-Received: by 10.202.175.18 with SMTP id y18mr1928803oie.104.1475164232297;
 Thu, 29 Sep 2016 08:50:32 -0700 (PDT)
MIME-Version: 1.0
From: Mike Kienenberger <mkienenb@gmail.com>
Date: Thu, 29 Sep 2016 11:50:11 -0400
Message-ID: <CAM1yOjbkx_c4D4_HY3ovdFLDiRirWrnKa0OUwra=ZitrLbrSKw@mail.gmail.com>
To: announce@myfaces.apache.org, MyFaces Development <dev@myfaces.apache.org>, 
	MyFaces Discussion <users@myfaces.apache.org>
Cc: "security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 1.2.15 released

The Apache MyFaces team is pleased to announce the release of Apache
MyFaces Trinidad 1.2.15.

MyFaces Trinidad is a feature-rich renderkit for JavaServer(tm) Faces
that provides an extendibles framework and extensive skinning support.
This version is designed to be used with the JSF 1.2 specification and
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

Release Notes - MyFaces Trinidad - Version 1.2.15

Bug
    [TRINIDAD-2542] - CVE-2016-5019: MyFaces Trinidad view state
deserialization security vulnerability

    [TRINIDAD-195] - Two requests at the same time throw an exception
when the server just started
    [TRINIDAD-943] - handle session timeout
    [TRINIDAD-1683] - client-side convertNumber causes loss of precision
    [TRINIDAD-1804] - Resources not found(404) errors
    [TRINIDAD-1960] - NullPointerException in
LocaleInfoScriptlet.getSupportedLocaleVariant
    [TRINIDAD-2009] - tr:table selectAll also selects disabled chekcboxes
    [TRINIDAD-2017] - Trinidad statemananger needs to store everything
on the client, when HTML_Basic is used, in combination with standard
client-side state-saving
    [TRINIDAD-2021] - Wrong behavior in TrNumberFormat
    [TRINIDAD-2023] - CheckSerializationConfigurator should use the
Trinidad specific ObjectInputStream (ObjectInputStreamResolveClass)
class
    [TRINIDAD-2024] - UIXCollection holding only to application data
    [TRINIDAD-2028] - Should reset value on component at the beginning of d=
ecode
    [TRINIDAD-2033] - trh:tableLayout tag doc should call out
table-layout:fixed as desirable for programmatically-resizable cell
contents
    [TRINIDAD-2036] - While ResourceServlet references files of type
"ico", they won't load because CoreRenderKitResourceLoader doesn't
register them
    [TRINIDAD-2039] - Icons are created if the string for the resource
is an empty string in Trinidad 1.2
    [TRINIDAD-2045] - UIXCollection should release the reference to
the model at the very end of processSaveState
    [TRINIDAD-2047] - UIXCollection saves the stamp state when there is no =
stamp
    [TRINIDAD-2048] - ComponentUtils.getScopedIdForComponent() is not
producing consistent scoped IDs for components relocated during tag
execution
    [TRINIDAD-2051] - NPE in BAseChangeManager
    [TRINIDAD-2057] - UIXTree/UIXTreeTable/UIXTable RowKeySets require
that their attributes are only fetched when the component is in
context
    [TRINIDAD-2061] - add a utility method in PartialPageUtils to send
a <noop/> ppr response
    [TRINIDAD-2097] - tr:selectOneListBox - item not selected - wrong
item of selected item returned by SimpleSelectOneRenderer.resolveIndex
    [TRINIDAD-2110] - workaround for jsf portlet bridge 2.0 nullviewstateto=
ken
    [TRINIDAD-2173] - tr:table component renders navigation bar
wrongly for unknown row count

Improvement

    [TRINIDAD-1729] - provide a hook for for an external decorator of
Skin InputStreamProvider

New Feature

    [TRINIDAD-1457] - Need the ability to bypass the Cache on ResourceServl=
et
    [TRINIDAD-2062] - Need to add a utility method to
ExternalContextUtils to get the writer from the ExternalContext

regards,

Mike Kienenberger
