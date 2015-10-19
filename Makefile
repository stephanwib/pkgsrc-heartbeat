# $NetBSD: Makefile,v 1.1 2014/11/09 15:05:00 swib Exp $

DISTNAME=	aa909246edb3
PKGNAME=	heartbeat-2.1
CATEGORIES=	net
MASTER_SITES=	http://hg.linux-ha.org/lha-2.1/archive/

MAINTAINER=	stephanwib@googlemail.com
HOMEPAGE=	http://hg.linux-ha.org/lha-2.1/archive/
COMMENT=	Heartbeat HA suite
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1
USE_LIBTOOL=	yes
USE_TOOLS+=	autoconf automake
AUTOMAKE_OVERRIDE=	no
BUILD_DEPENDS+=	bison:../../devel/bison

WRKSRC=	${WRKDIR}/Heartbeat-2-1-aa909246edb3

PKG_SYSCONFSUBDIR=	heartbeat
EGDIR=			${PREFIX}/share/examples/heartbeat
CONF_FILES+=		${EGDIR}/ha.d/README.config ${PKG_SYSCONFDIR}/ha.d/README.config
CONF_FILES_PERMS=	${EGDIR}/ha.d/shellfuncs ${PKG_SYSCONFDIR}/ha.d/shellfuncs ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/harc ${PKG_SYSCONFDIR}/ha.d/harc ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/rc.d/status ${PKG_SYSCONFDIR}/ha.d/rc.d/status ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/rc.d/ask_resources ${PKG_SYSCONFDIR}/ha.d/rc.d/ask_resources ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/rc.d/hb_takeover ${PKG_SYSCONFDIR}/ha.d/rc.d/hb_takeover ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/rc.d/ip-request ${PKG_SYSCONFDIR}/ha.d/rc.d/ip-request ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/rc.d/ip-request-resp ${PKG_SYSCONFDIR}/ha.d/rc.d/ip-request-resp ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/AudibleAlarm ${PKG_SYSCONFDIR}/ha.d/resource.d/AudibleAlarm ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/Delay ${PKG_SYSCONFDIR}/ha.d/resource.d/Delay ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/Filesystem ${PKG_SYSCONFDIR}/ha.d/resource.d/Filesystem ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/ICP ${PKG_SYSCONFDIR}/ha.d/resource.d/ICP ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/IPaddr ${PKG_SYSCONFDIR}/ha.d/resource.d/IPaddr ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/IPaddr2 ${PKG_SYSCONFDIR}/ha.d/resource.d/IPaddr2 ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/IPsrcaddr ${PKG_SYSCONFDIR}/ha.d/resource.d/IPsrcaddr ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/IPv6addr ${PKG_SYSCONFDIR}/ha.d/resource.d/IPv6addr ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/LVM ${PKG_SYSCONFDIR}/ha.d/resource.d/LVM ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/LVSSyncDaemonSwap ${PKG_SYSCONFDIR}/ha.d/resource.d/LVSSyncDaemonSwap ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/LinuxSCSI ${PKG_SYSCONFDIR}/ha.d/resource.d/LinuxSCSI ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/MailTo ${PKG_SYSCONFDIR}/ha.d/resource.d/MailTo ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/OCF ${PKG_SYSCONFDIR}/ha.d/resource.d/OCF ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/Raid1 ${PKG_SYSCONFDIR}/ha.d/resource.d/Raid1 ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/SendArp ${PKG_SYSCONFDIR}/ha.d/resource.d/SendArp ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/ServeRAID ${PKG_SYSCONFDIR}/ha.d/resource.d/ServeRAID ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/WAS ${PKG_SYSCONFDIR}/ha.d/resource.d/WAS ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/WinPopup ${PKG_SYSCONFDIR}/ha.d/resource.d/WinPopup ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/Xinetd ${PKG_SYSCONFDIR}/ha.d/resource.d/Xinetd ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/apache ${PKG_SYSCONFDIR}/ha.d/resource.d/apache ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/db2 ${PKG_SYSCONFDIR}/ha.d/resource.d/db2 ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/hto-mapfuncs ${PKG_SYSCONFDIR}/ha.d/resource.d/hto-mapfuncs ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/ids ${PKG_SYSCONFDIR}/ha.d/resource.d/ids ${ROOT_USER} ${ROOT_GROUP} 0755
CONF_FILES_PERMS+=	${EGDIR}/ha.d/resource.d/portblock ${PKG_SYSCONFDIR}/ha.d/resource.d/portblock ${ROOT_USER} ${ROOT_GROUP} 0755

RCD_SCRIPTS=	heartbeat

OWN_DIRS=	${PKG_SYSCONFDIR}
OWN_DIRS+=	${PKG_SYSCONFDIR}/ha.d
OWN_DIRS+=	${PKG_SYSCONFDIR}/ha.d/resource.d
OWN_DIRS+=	${PKG_SYSCONFDIR}/ha.d/rc.d
OWN_DIRS+=	${PKG_SYSCONFDIR}/logrotate.d
OWN_DIRS+=	${VARBASE}/run/heartbeat/ccm
OWN_DIRS+=	${VARBASE}/lib/heartbeat/lrm
OWN_DIRS+=	${VARBASE}/lib/heartbeat/fencing
OWN_DIRS+=	${VARBASE}/lib/heartbeat/cores/root
OWN_DIRS+=	${VARBASE}/lib/heartbeat/cores/nobody
OWN_DIRS+=	${VARBASE}/lib/heartbeat/cores/hacluster

HB_USER=	hacluster
HB_GROUP=	haclient

PKG_USERS=	${HB_USER}:${HB_GROUP}
PKG_GECOS.${HB_USER}=	"Heartbeat Cluster"
PKG_HOME.${HB_USER}=	${VARBASE}/run/heartbeat	
PKG_GROUPS=	${HB_GROUP}

SUBST_CLASSES+=               ocf-binaries
SUBST_FILES.ocf-binaries=     ${WRKSRC}/resources/OCF/.ocf-binaries
SUBST_MESSAGE.ocf-binaries=   Tweaking paths of executables
SUBST_SED.ocf-binaries=       -e 's|$(TOOLS_DIR)/bin/awk|/usr/bin/awk|g'
SUBST_SED.ocf-binaries+=      -e 's|$(TOOLS_DIR)/bin/grep -E|/usr/bin/egrep|g'
SUBST_SED.ocf-binaries+=      -e 's|$(TOOLS_DIR)/bin/test|/bin/test|g'
SUBST_STAGE.ocf-binaries=     post-build

SUBST_CLASSES+=             shellfuncs
SUBST_FILES.shellfuncs=     ${WRKSRC}/heartbeat/shellfuncs
SUBST_MESSAGE.shellfuncs=   Tweaking paths of executables
SUBST_SED.shellfuncs=       -e 's|$(TOOLS_DIR)||g'
SUBST_STAGE.shellfuncs=     post-build

BOOTSTRAP_ARGS=		--disable-fatal-warnings
BOOTSTRAP_ARGS+=	--prefix=${PREFIX}
BOOTSTRAP_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
BOOTSTRAP_ARGS+=	--localstatedir=${VARBASE}
BOOTSTRAP_ARGS+=	--with-ocf-root=${PREFIX}/lib
BOOTSTRAP_ARGS+=	--mandir=${PREFIX}/${PKGMANDIR}
BOOTSTRAP_ARGS+=	--with-initdir=${EGDIR}/rc.d
BOOTSTRAP_ARGS+=	--disable-crm
BOOTSTRAP_ARGS+=	--disable-lrm
BOOTSTRAP_ARGS+=	--disable-dopd
BOOTSTRAP_ARGS+=	--disable-quorumd
BOOTSTRAP_ARGS+=	--disable-ldirectord
BOOTSTRAP_ARGS+=	--disable-mgmt

pre-configure:
		(cd ${WRKSRC}; ./bootstrap ${BOOTSTRAP_ARGS})

post-install:
		(cd ${DESTDIR}; cp -r usr/pkg/etc/heartbeat/* usr/pkg/share/examples/heartbeat)

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libnet10/buildlink3.mk"
.include "../../lang/python33/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
