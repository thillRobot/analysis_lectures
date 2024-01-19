function [vdot_out] = vdot_model(t_in,v_in,F_in,m_in,c_in)
%vdot_model This function contains a first order diffential equation.

    vdot_out=F_in-c_in/m_in*v_in;

end

