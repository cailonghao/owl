package com.mem.provider;


import com.mem.provider.controller.SysUserController;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;


@SpringBootTest(classes = {OwlMemProviderApplication.class})
@RunWith(SpringRunner.class)
@AutoConfigureMockMvc
public class SUserTestController {

    @Autowired
    MockMvc mockMvc;

    @Autowired
    SysUserController sysUserController;

    @Test
    public void insert() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .post("/sUser/insert")
                // 设置返回值类型为utf-8，否则默认为ISO-8859-1
                .accept(MediaType.APPLICATION_JSON)
                .header("token", "mockMvc")
                .param("username", "rookie")
                .param("password", "123456")
                .param("email", "cailonghao1234@foxmail.com")
                .param("mobile", "15220287105")
                .param("status", "0")
                .param("createUserId", "0")
                .param("shopId", "0"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }

    @Test
    public void selectOne() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .post("/sUser/selectOne/2")
                // 设置返回值类型为utf-8，否则默认为ISO-8859-1
                .accept(MediaType.APPLICATION_JSON)
                .header("token", "mockMvc")
                .param("shopId", "0"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }

    @Test
    public void page() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .post("/sUser/selectAll")
                // 设置返回值类型为utf-8，否则默认为ISO-8859-1
                .accept(MediaType.APPLICATION_JSON)
                .header("token", "mockMvc")
                .param("curPage", "1"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }
}
