USE [Sts9Store]
GO

/****** Object:  UserDefinedFunction [dbo].[COMBIN]    Script Date: 09/30/2016 15:04:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      
-- CreateDate:	?
-- Title:		COMBIN
-- Description: Part of the Combination/Permutation/Factorial Calculator
--	TODO learn more about this
--	https://www.mathsisfun.com/combinatorics/combinations-permutations.html
--	http://stattrek.com/online-calculator/combinations-permutations.aspx
--	http://weblogs.sqlteam.com/davidm/archive/2003/11/11/475.aspx
-- =============================================

CREATE FUNCTION [dbo].[COMBIN](
	
	@n INT, 
	@r INT
	
) 
RETURNS FLOAT
AS

BEGIN

	DECLARE @Result FLOAT
    
    IF @r > (@n/2)        
		SET @Result= dbo.PERMUT(@n,(@n - @r)) / dbo.FACT((@n - @r))
    ELSE
        SET @Result= dbo.PERMUT(@n,@R) / dbo.FACT(@r)
    
    RETURN @Result
   
END

GO

