//package com.bluebee.modules;
//
//
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//@Controller
//public class HomeController {
//		
//		private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
//		
//		/**
//		 * Simply selects the home view to render by returning its name.
//		 */
//		@RequestMapping(value = "/", method = RequestMethod.GET)
//		public String home() {
//			logger.info("Welcome home! The client locale is {}.");
//
//			return "";
//		}
//		@RequestMapping(value = "/a", method = RequestMethod.GET)
//		public String a(Locale locale, Model model) {
//			return "a";
//		}
//		@RequestMapping(value = "/b", method = RequestMethod.GET)
//		public String b(Locale locale, Model model) {
//			return "b";
//		}
//		@RequestMapping(value = "/c", method = RequestMethod.GET)
//		public String c(Locale locale, Model model) {
//			return "c";
//		}
//		@RequestMapping(value = "/d", method = RequestMethod.GET)
//		public String d(Locale locale, Model model) {
//			return "d";
//		}
//		@RequestMapping(value = "/e", method = RequestMethod.GET)
//		public String e(Locale locale, Model model) {
//			return "e";
//		}
//		@RequestMapping(value = "/codegroupList", method = RequestMethod.GET)
//		public String codegroupList(Locale locale, Model model) {
//			return "codegroupList";
//		}
//}
//
